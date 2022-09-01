import argparse
import logging
import json
import os
from pyserini.search.lucene import LuceneSearcher
from collections import defaultdict
from subprocess import check_output
from sys import stdout


# This script takes the TREC-formatted output of an initial ranking and reformats the results as a json file to be input
# into the `crossenc_rerank.py` script (argument `input_file`)


def parse_arguments() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument('topkfile', type=str, help='Path to initial ranking (TREC format txt file)')
    parser.add_argument('index', type=str, help='Pre-built index to supply to the Anserini searcher for document lookup')
    parser.add_argument('output_fp', type=str, help='Where to write the results')
    return parser.parse_args()


def main(args: argparse.Namespace, logger: logging.Logger) -> None:
    logger.info('Fetching documents...')
    searcher = LuceneSearcher.from_prebuilt_index(args.index)
    precomputed_hits = defaultdict(list)
    n = check_output(['wc', '-l', args.topkfile]).decode('utf-8').split().pop(0)
    with open(args.topkfile, 'r') as f:
        for i, line in enumerate(f):
            row = line.replace('\n', '').split()
            if not i % 100:
                qid = int(row[0])
            precomputed_hits[qid].append(json.loads(searcher.doc(row[2]).raw()))
            stdout.write('\r')
            stdout.flush()
            stdout.write(f'N. documents processed: {i + 1}/{n}')
            stdout.flush()
        stdout.write('\n')
    
    logger.info('Writing to file...')
    fp = args.output_fp if args.output_fp.endswith('.json') else os.path.join(args.output_fp, 'precomputed_hits.json')
    with open(fp, 'w') as f:
        json.dump(precomputed_hits, f)
    logger.info(f'Done! Results in {fp}')


if __name__ == '__main__':
    args = parse_arguments()
    logger = logging.getLogger(__name__)
    logging.basicConfig(format='%(asctime)s - %(levelname)s - \t%(message)s', datefmt='%d/%m/%Y %H:%M:%S', level=logging.INFO)
    main(args, logger)