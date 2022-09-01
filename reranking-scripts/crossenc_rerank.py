import pandas as pd
import argparse
import logging
import json
import os
from sentence_transformers import CrossEncoder
from datetime import datetime
from subprocess import check_output


def parse_arguments() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument('queries', type=str, help='Path to queries file (tsv)')
    parser.add_argument('input_file', type=str, help='Path to json file with documents retrieved by some inital ranking')
    parser.add_argument('encoder', type=str, help='Cross-encoder model to use for reranking')
    parser.add_argument('output_dir', type=str, help='Where to write the results (will insert a timestamped subdirectory)')
    parser.add_argument('runstr', type=str, help='Run name, required for TREC output format')
    # parser.add_argument('--qrels', type=str, help='Relevance file for evaluation metric calculation')
    parser.add_argument('--k', type=int, default=100, help='Number of documents to rerank')
    parser.add_argument('--doc', action='store_true', help='Use document ID instead of passage ID in output file')
    return parser.parse_args()


def main(args: argparse.Namespace, logger: logging.Logger) -> None:
    logger.info('Setup...')
    task_id_type = 'docid' if args.doc else 'pid'
    now = datetime.now()
    output_subdir_name = f'run_{now.month}_{now.day}_{now.hour}_{now.minute}'
    output_fp = os.path.join(args.output_dir, output_subdir_name)
    try:
        os.mkdir(output_fp)
    except FileExistsError:
        pass
    ranking_fp = os.path.join(output_fp, 'rerank_results.txt')

    logger.info('Loading document data...')
    with open(args.input_file, 'r') as f:
        precomputed_hits = json.load(f)

    logger.info(f'Running reranking with {args.encoder} on {args.input_file}...')
    queries_df = pd.read_csv(args.queries, sep='\t', header=None, names=('qid', 'query'), dtype={'qid': str}).set_index('qid')
    cross_encoder = CrossEncoder(args.encoder)
    with open(ranking_fp, 'w') as outfile:
        for qid, hit_list in precomputed_hits.items():
            query = queries_df.loc[qid, :].item()
            encoder_inputs = [(query, hit['passage']) for hit in hit_list[:args.k]]
            rerank_scores = cross_encoder.predict(encoder_inputs, show_progress_bar=False)
            results = sorted(
                [dict(id=hit[task_id_type], score=score) for hit, score in zip(hit_list, rerank_scores)],
                key=lambda x: x['score'], reverse=True
            )
            if args.k < len(hit_list):
                results += [dict(id=hit[task_id_type], score=-1) for hit in hit_list[args.k:]]
            lines = [f'{qid} Q0 {r["id"]} {i + 1} {r["score"]} {args.runstr}\n' for i, r in enumerate(results)]
            outfile.writelines(lines)

    # if args.qrels is not None:
    #     logger.info('Running evaluation script...')
    #     eval_cmd = ['python', '-m', 'pyserini.eval.trec_eval', '-m', 'all_trec', args.qrels, ranking_fp]
    #     eval_output = check_output(eval_cmd).decode('utf-8')
    #     with open(os.path.join(output_fp, 'eval_results.txt'), 'w') as f:
    #         f.write(eval_output)

    # save params
    with open(os.path.join(output_fp, 'params.json'), 'w') as f:
        json.dump(vars(args), f)
    logger.info(f'Done! Results in {output_fp}')


if __name__ == '__main__':
    args = parse_arguments()
    logger = logging.getLogger(__name__)
    logging.basicConfig(format='%(asctime)s - %(levelname)s - \t%(message)s', datefmt='%d/%m/%Y %H:%M:%S', level=logging.INFO)
    main(args, logger)