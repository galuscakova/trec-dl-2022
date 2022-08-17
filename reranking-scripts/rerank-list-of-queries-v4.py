#!/home/mrim/galuscap/tools/environments/reranking/.reranking/bin/python3

import re
import os
import gzip
import json
import sys, getopt


#from pyserini.search import SimpleSearcher

from pyserini.index import IndexReader

from pygaggle.rerank.base import Query, Text
from pygaggle.rerank.transformer import MonoT5
from pygaggle.rerank.transformer import MonoBERT

reranker = MonoT5()

reranker_argument = sys.argv[1]
if (reranker_argument == "bert" or reranker_argument == "BERT" or reranker_argument == "Bert"):
    reranker = MonoBERT()
elif (reranker_argument != "t5" and reranker_argument != "T5"):
        print ("Reranker can either be BERT or T5")

queries_filename = sys.argv[2]
#"/home/mrim/data/collection/msmarco_v2/topics/2021_queries.tsv"
run_filename = sys.argv[3]
#"/home/mrim/galuscap/experiments/msmarco/bm25/run.msmarco-v2-passage-2021"
msmarco_directory = "/home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage/"

topk  = int(sys.argv[4])
# = 10

#searcher = SimpleSearcher.from_prebuilt_index('msmarco-v2-passage')
reader = IndexReader.from_prebuilt_index('msmarco-v2-passage')

msmarco_queries = {}

# Read Queries
with open(queries_filename) as qf:
    for line in qf:
        query_id, query_text = re.split(r'\t+', line)
        msmarco_queries[query_id] = query_text

print ("Reading queries done")

# Run reranking

results = []
first_rank = -1

with open(run_filename) as rf:

    for line in rf:

        line_query_id, q0, line_doc_id, line_rank, line_score, system = re.split(r' ', line)

        if (first_rank == -1):
            first_rank = int(line_rank)

        if ((int(line_rank) == first_rank) and results):
            # Run reranking !

            query_id = "-1"
            texts = []
            k = 0
            while ((k < topk) and (k < len(results))):
                line_to_rerank = results[k]
                #print(line_to_rerank)
                query_id, q0, doc_id, rank, score, system = re.split(r' ', line_to_rerank)

                json_text_packed = reader.doc(doc_id).raw()
                json_text = json.loads(json_text_packed)
                passage_text = json_text['passage']

                #print(passage_text)
                
                text = Text(passage_text, {'docid': doc_id}, 0)
                texts.append(text)
                k = k+1

            query_text = msmarco_queries[query_id]
            query = Query(query_text)

            #print("QT: " + query_text)

            reranked = reranker.rerank(query, texts)
            for i in range(0, k):
                i_doc_id = reranked[i].metadata["docid"]
                #print(reranked[i].metadata["docid"])
                #print(f'{i+1:2} {reranked[i].metadata["docid"]:15} {reranked[i].score:.5f} {reranked[i].text}')
                new_line = query_id + " Q0 " + i_doc_id + " " + str(i+1) + " " + str(10000-i) + " Reranked"
                print(new_line)

            for j in range(k, len(results)):
                print(results[j])

            results = []

        results.append(line.rstrip())

# Still need to printout last query!!!
query_id = "-1"
texts = []
k = 0
while k < topk:
    line_to_rerank = results[k]
    query_id, q0, doc_id, rank, score, system = re.split(r' ', line_to_rerank)
    
    json_text_packed = reader.doc(doc_id).raw()
    json_text = json.loads(json_text_packed)
    passage_text = json_text['passage']
    
    text = Text(passage_text, {'docid': doc_id}, 0)
    texts.append(text)
    k = k+1

query_text = msmarco_queries[query_id]
query = Query(query_text)

reranked = reranker.rerank(query, texts)
for i in range(0,k):
    i_doc_id = reranked[i].metadata["docid"]
    new_line = query_id + " Q0 " + i_doc_id + " " + str(i+1) + " " + str(10000-i) + " Reranked"
    print(new_line)

for j in range(k, len(results)):
    print(results[j])
