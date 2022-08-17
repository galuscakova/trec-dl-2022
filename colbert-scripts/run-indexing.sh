#mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_0
#python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_00.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_0 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_0.txt

#wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_0/docid
#mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_1
#python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_01.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_1 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_1.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_1/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_2
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_02.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_2 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_2.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_2/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_3
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_03.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_3 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_3.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_3/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_4
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_04.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_4 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_4.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_4/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_5
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_05.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_5 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_5.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_5/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_6
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_06.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_6 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_6.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_6/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_7
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_07.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_7 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_7.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_7/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_8
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_08.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_8 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_8.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_8/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_9
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_09.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_9 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_9.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_9/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_10
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_10.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_10 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_10.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_10/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_11
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_11.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_11 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_11.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_11/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_12
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_12.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_12 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_12.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_12/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_13
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_13.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_13 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_13.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_13/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_14
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_14.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_14 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_14.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_14/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_15
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_15.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_15 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_15.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_15/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_16
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_16.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_16 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_16.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_16/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_17
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_17.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_17 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_17.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_17/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_18
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_18.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_18 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_18.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_18/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_19
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_19.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_19 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_19.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_19/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_20
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_20.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_20 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_20.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_20/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_21
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_21.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_21 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_21.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_21/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_22
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_22.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_22 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_22.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_22/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_23
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_23.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_23 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_23.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_23/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_24
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_24.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_24 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_24.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_24/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_25
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_25.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_25 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_25.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_25/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_26
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_26.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_26 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_26.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_26/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_27
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_27.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_27 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_27.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_27/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_28
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_28.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_28 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_28.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_28/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_29
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_29.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_29 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_29.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_29/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_30
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_30.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_30 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_30.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_30/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_31
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_31.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_31 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_31.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_31/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_32
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_32.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_32 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_32.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_32/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_33
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_33.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_33 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_33.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_33/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_34
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_34.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_34 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_34.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_34/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_35
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_35.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_35 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_35.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_35/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_36
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_36.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_36 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_36.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_36/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_37
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_37.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_37 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_37.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_37/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_38
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_38.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_38 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_38.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_38/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_39
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_39.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_39 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_39.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_39/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_40
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_40.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_40 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_40.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_40/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_41
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_41.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_41 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_41.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_41/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_42
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_42.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_42 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_42.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_42/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_43
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_43.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_43 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_43.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_43/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_44
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_44.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_44 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_44.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_44/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_45
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_45.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_45 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_45.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_45/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_46
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_46.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_46 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_46.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_46/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_47
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_47.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_47 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_47.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_47/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_48
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_48.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_48 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_48.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_48/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_49
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_49.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_49 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_49.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_49/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_50
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_50.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_50 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_50.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_50/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_51
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_51.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_51 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_51.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_51/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_52
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_52.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_52 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_52.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_52/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_53
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_53.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_53 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_53.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_53/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_54
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_54.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_54 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_54.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_54/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_55
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_55.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_55 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_55.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_55/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_56
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_56.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_56 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_56.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_56/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_57
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_57.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_57 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_57.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_57/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_58
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_58.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_58 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_58.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_58/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_59
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_59.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_59 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_59.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_59/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_60
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_60.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_60 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_60.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_60/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_61
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_61.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_61 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_61.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_61/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_62
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_62.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_62 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_62.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_62/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_63
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_63.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_63 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_63.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_63/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_64
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_64.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_64 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_64.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_64/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_65
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_65.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_65 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_65.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_65/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_66
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_66.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_66 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_66.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_66/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_67
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_67.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_67 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_67.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_67/docid
mkdir /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_68
python -m pyserini.encode input --corpus /home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/msmarco_passage_68.jsonl --fields text --delimiter "\n" --shard-id 0 --shard-num 1 output  --embeddings /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_68 --to-faiss encoder --encoder castorini/tct_colbert-v2-hnp-msmarco  --fields text --batch 32  --fp16 > /home/mrim/galuscap/log_68.txt

wc -l /home/mrim/galuscap/experiments/colbert/msmarco-v2-embeddings/shard_68/docid
