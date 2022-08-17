#python3 /home/mrim/galuscap/scripts/msmarco/rerank-list-of-queries-v4.py t5 /home/mrim/data/collection/msmarco_v2/topics/2022_queries.tsv /home/mrim/galuscap/experiments/msmarco/test/r1_run.txt 100 > /home/mrim/galuscap/experiments/msmarco/test/r3.txt

#python3 /home/mrim/galuscap/scripts/msmarco/rerank-list-of-queries-v4.py t5 /home/mrim/data/collection/msmarco_v2/topics/2022_queries.tsv /home/mrim/gonzagab/data/TREC-DL/runs/reranking22/minilm_l12/run_7_25_15_41/rerank_results.txt 10 > /home/mrim/galuscap/experiments/msmarco/test/r89.txt

#python3 /home/mrim/galuscap/scripts/msmarco/rerank-list-of-queries-v4.py t5 /home/mrim/data/collection/msmarco_v2/topics/2022_queries.tsv /home/data/collection/msmarco_v2/runs/2022_passage_top100.txt 100 > /home/mrim/galuscap/experiments/msmarco/test/rerank-t5.txt

#python3 /home/mrim/galuscap/scripts/msmarco/rerank-list-of-queries-v4.py bert /home/mrim/data/collection/msmarco_v2/topics/2022_queries.tsv /home/data/collection/msmarco_v2/runs/2022_passage_top100.txt 100 > /home/mrim/galuscap/experiments/msmarco/test/rerank-bert.txt

#python3 /home/mrim/galuscap/scripts/msmarco/rerank-list-of-queries-v4.py t5 /home/mrim/data/collection/msmarco_v2/topics/2022_queries.tsv /home/mrim/gonzagab/data/TREC-DL/runs/reranking22/minilm_l12/run_7_25_15_41/rerank_results.txt 100 > /home/mrim/galuscap/experiments/msmarco/test/r88.txt

#python3 /home/mrim/galuscap/scripts/msmarco/rerank-list-of-queries-v4.py t5 /home/mrim/data/collection/msmarco_v2/topics/2022_queries.tsv /home/mrim/gonzagab/data/TREC-DL/runs/reranking22/minilm_l12/run_7_29_11_55/rerank_results.txt 10 > /home/mrim/galuscap/experiments/msmarco/test/rerank_dense_t5.txt

#python3 /home/mrim/galuscap/scripts/msmarco/rerank-list-of-queries-v4.py t5 /home/mrim/data/collection/msmarco_v2/topics/2022_queries.tsv /home/mrim/galuscap/experiments/fused_run_tr54_tr65 100 > /home/mrim/galuscap/experiments/msmarco/test/r120.txt

#python3 /home/mrim/galuscap/scripts/msmarco/rerank-list-of-queries-v4.py t5 /home/mrim/data/collection/msmarco_v2/topics/2022_queries.tsv /home/mrim/galuscap/experiments/msmarco/test/colbert-test.txt 100 > /home/mrim/galuscap/experiments/msmarco/test/R122.txt

python3 /home/mrim/galuscap/scripts/msmarco/rerank-list-of-queries-v4.py bert /home/mrim/data/collection/msmarco_v2/topics/2022_queries.tsv /home/mrim/galuscap/experiments/msmarco/test/fused_run_tr64_tr65_tr121 10 > /home/mrim/galuscap/experiments/msmarco/test/R124.txt
