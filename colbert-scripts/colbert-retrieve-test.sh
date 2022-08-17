python -m pyserini.dsearch --topics /home/data/collection/msmarco_v2/topics/2021_queries.tsv --index /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_0 --encoder 'castorini/tct_colbert-v2-hnp-msmarco-r2' --output /home/mrim/galuscap/experiments/msmarco/colbert/2021_output_0 --output-format trec --batch-size 144 --threads 12

python -m pyserini.dsearch --topics /home/data/collection/msmarco_v2/topics/2021_queries.tsv --index /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_1 --encoder 'castorini/tct_colbert-v2-hnp-msmarco-r2' --output /home/mrim/galuscap/experiments/msmarco/colbert/2021_output_1 --output-format trec --batch-size 144 --threads 12

