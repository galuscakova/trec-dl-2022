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
alpha = float(sys.argv[5])

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
prev_line_query_id = "-1"

with open(run_filename) as rf:

    for line in rf:

        line_query_id, q0, line_doc_id, line_rank, line_score, system = re.split(r' ', line)

        if ((prev_line_query_id != line_query_id) and (not prev_line_query_id == "-1")):
            # Starting with the new query
            # Run reranking (on this query)

            query_id = "-1"
            texts = []

            k = 0
            while ((k < topk) and (k < len(results))):
                # Prepare data for running reranking
                # Now go trough all lines to rerank following the present line
                # These lines were saved in results before
                # Add these lines to texts list -- this is used while reranking

                line_to_rerank = results[k]
                query_id, q0, doc_id, rank, score, system = re.split(r' ', line_to_rerank)

                json_text_packed = reader.doc(doc_id).raw()
                json_text = json.loads(json_text_packed)
                passage_text = json_text['passage']

                text = Text(passage_text, {'docid': doc_id}, 0)
                texts.append(text)
                k = k+1

            # Get query used for reranking
            query_text = msmarco_queries[prev_line_query_id]
            query = Query(query_text)

            # Run reranking
            reranked = reranker.rerank(query, texts)
            
            max_reranked_score = 0
            min_reranked_score = 1000000

            k = 0
            while ((k < topk) and (k < len(results))):
                # Read the scores for the reranked items
                # This is needed for the normalization

                score = reranked[k].score
                if (max_reranked_score < score):
                    max_reranked_score = score
                if (min_reranked_score > score):
                    min_reranked_score = score

                k = k+1

            k = 0
            while ((k < topk) and (k < len(results))):
                # Now normalize and print out the reranked results

                i_doc_id = reranked[k].metadata["docid"]

                score = float(reranked[k].score)
                normalized_score = (score - min_reranked_score) / (max_reranked_score - min_reranked_score) 
                normalized_score = normalized_score * (1 - alpha) + alpha

                new_line = query_id + " Q0 " + i_doc_id + " " + str(k+1) + " " + str(normalized_score) + " Reranked"
                print(new_line)


                k = k + 1
        
            max_original_score = 0
            min_original_score = 1000000

            for j in range(topk, len(results)):
                # Get the scores of the rest of the items (not reranked) fot the further normalization
                # Go from k [where we stopped the reranking]

                q, zero, d, r, score, t = results[j].split()
                score_float = float(score)

                if (max_original_score < score_float):
                    max_original_score = score_float
                if (min_original_score > score_float):
                    min_original_score = score_float

            for j in range(topk, len(results)):
                # Now print out the rest of the items (not reranked)

                q, zero, d, r, score, t = results[j].split()
                score_float = float(score)
                normalized_score = (score_float - min_original_score) / (max_original_score - min_original_score)
                normalized_score = normalized_score * (alpha - 0.000001)

                new_line = q + " Q0 " + d + " " + str(j+1) + " " + str(normalized_score) + " " + t
                print(new_line)

            results = []

        prev_line_query_id = line_query_id
        results.append(line.rstrip())

# Still need to printout last query!!!
# We have what we want to print already in the results

query_id = "-1"
texts = []

k = 0   
while ((k < topk) and (k < len(results))):
    # Prepare data for running reranking
    # Now go trough all lines to rerank following the present line
    # These lines were saved in results before
    # Add these lines to texts list -- this is used while reranking

    line_to_rerank = results[k]
    query_id, q0, doc_id, rank, score, system = re.split(r' ', line_to_rerank)

    json_text_packed = reader.doc(doc_id).raw()
    json_text = json.loads(json_text_packed)
    passage_text = json_text['passage']

    text = Text(passage_text, {'docid': doc_id}, 0)
    texts.append(text)
    k = k+1

# Get query used for reranking
query_text = msmarco_queries[query_id]
query = Query(query_text)

# Run reranking
reranked = reranker.rerank(query, texts)
            
max_reranked_score = 0
min_reranked_score = 1000000

k = 0
while ((k < topk) and (k < len(results))):
    # Read the scores for the reranked items
    # This is needed for the normalization

    score = reranked[k].score
    if (max_reranked_score < score):
        max_reranked_score = score
    if (min_reranked_score > score):
        min_reranked_score = score

    k = k+1
            
k = 0
while ((k < topk) and (k < len(results))):
    # Now normalize and print out the reranked results

    i_doc_id = reranked[k].metadata["docid"]

    score = float(reranked[k].score)
    normalized_score = (score - min_reranked_score) / (max_reranked_score - min_reranked_score) 
    normalized_score = normalized_score * (1 - alpha) + alpha

    new_line = query_id + " Q0 " + i_doc_id + " " + str(k+1) + " " + str(normalized_score) + " Reranked"
    print(new_line)

    k = k + 1
        
max_original_score = 0
min_original_score = 1000000

for j in range(topk, len(results)):
    # Get the scores of the rest of the items (not reranked) fot the further normalization
    # Go from k [where we stopped the reranking]

    q, zero, d, r, score, t = results[j].split()
    score_float = float(score)

    if (max_original_score < score_float):
        max_original_score = score_float
    if (min_original_score > score_float):
        min_original_score = score_float

for j in range(topk, len(results)):
    # Now print out the rest of the items (not reranked)

    q, zero, d, r, score, t = results[j].split()
    score_float = float(score)
    normalized_score = (score_float - min_original_score) / (max_original_score - min_original_score)
    normalized_score = normalized_score * (alpha - 0.000001)

    new_line = q + " Q0 " + d + " " + str(j+1) + " " + str(normalized_score) + " " + t
    print(new_line)
    
