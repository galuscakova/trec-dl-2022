#!/usr/bin/python

for i in range(0, 69):

    istr = str(i)
    if (i < 10):
        istr = "0" + istr

    print("mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_" + str(i))
    print("python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_" + istr + ".jsonl --fields text --delimiter \"\\n\" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_" + str(i) + " --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_" + str(i) + ".txt\n")
    print("wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_" + str(i) + "/docid")

