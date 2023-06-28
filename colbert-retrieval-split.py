#!/usr/bin/python

import sys

queries_filename = "/home/data/collection/msmarco_v2/topics/2022_queries.tsv"
output_filename = "2022_colbert_output_"

#queries_filename = sys.argv[1]
#output_filename = sys.argv[2]

for i in range(0, 69):

    print ("python -m pyserini.dsearch --topics " + queries_filename + " --index /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_" + str(i) + " --encoder 'castorini/tct_colbert-v2-hnp-msmarco-r2' --output /home/mrim/galuscap/experiments/msmarco/colbert/2021-retrieval/" + output_filename + str(i) + " --output-format trec --batch-size 144 --threads 12\n")
