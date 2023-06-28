#!/usr/bin/python

import sys, re

method = sys.argv[1]
#print(method)
filenames = sys.argv[2:len(sys.argv)]

read_files = []
normalized_files = []

for filename in filenames:
    read_file = []
    #print(filename)
    with open(filename) as f:
        for line in f:
            line = line.rstrip("\n")
            read_file.append(line)
    read_files.append(read_file)

# Scores normalization per query

for read_file in read_files:

    # Needs to be done query-by-query

    prev_query = "null"
    total_score_per_query = {}
    max_score_per_query = {}
    min_score_per_query = {}

    total_score = 0
    min_score = 100000000
    max_score = 0

    for line in read_file:
        query, q0, document, rank, score, description = line.split()

        if (prev_query != "null" and prev_query != query):
            total_score_per_query[prev_query] = total_score
            max_score_per_query[prev_query] = max_score
            min_score_per_query[prev_query] = min_score

            total_score = 0
            min_score = 1000000000
            max_score = 0            

        if (float(score) < 0):
            print ("Negative score !!!")

        total_score = total_score + float(score)
        if (float(score) > max_score):
            max_score = float(score)
        if (float(score) < min_score):
            min_score = float(score)

        prev_query = query

    total_score_per_query[prev_query] = total_score
    min_score_per_query[prev_query] = min_score
    max_score_per_query[prev_query] = max_score
        
    normalized_file = []
    
    for line in read_file:
        query, q0, document, rank, score, description = line.split()
        
        new_line = query + " Q0 " + document + " " + rank + " " + score + " " + description
        if ("sto" in method or "STO" in method):
            total_score = total_score_per_query[query]
            normalized_score = float(score) / float(total_score)
            new_line = query + " Q0 " + document + " " + rank + " " + str(normalized_score) + " " + description

        elif ("minmax" in method or "MINMAX" in method):
            min_score = min_score_per_query[query]
            max_score = max_score_per_query[query]

            normalized_score = (float(score) - min_score) / (max_score - min_score)
            new_line = query + " Q0 " + document + " " + rank + " " + str(normalized_score) + " " + description

        normalized_file.append(new_line)

    normalized_files.append(normalized_file)


#print(normalized_files)

# Run Scores Summing

queries = []
scores_per_query = {}
scores_per_query_mnz = {}
systems_per_query = {}

for normalized_file in normalized_files:

    for line in normalized_file:
        query, q0, document, rank, normalized_score, description = line.split()

        if (not query in queries):
            queries.append(query)
            scores_per_query[query] = {}
            systems_per_query[query] = {}

        if document in scores_per_query[query]:
            original_score = scores_per_query[query][document]
            original_systems_num = systems_per_query[query][document]

            scores_per_query[query][document] = float(original_score) + float(normalized_score)
            systems_per_query[query][document] = original_systems_num + 1
        else:
            scores_per_query[query][document] = float(normalized_score)
            systems_per_query[query][document] = 1

# CombMNZ - multiply by the number of systems

if ("mnz" in method or "MNZ" in method):
    for query in queries:
        scores_single_query = scores_per_query[query]

        for document in scores_single_query.keys():

            systems_number = systems_per_query[query][document]

            if (not query in scores_per_query_mnz):
                scores_per_query_mnz[query] = {}

            scores_per_query_mnz[query][document] = scores_per_query[query][document] * systems_number

# Print out the output

for query in queries:
    scores_single_query = scores_per_query_mnz[query]

    rank = 1
    for document, score in sorted(scores_single_query.items(), key=lambda item: item[1], reverse=True):

        if rank > 1000:
            break

        print (query + " Q0 " + document + " " + str(rank) + " " + str(score) + " combination")
        rank = rank + 1
