#!/usr/bin/python

import sys
import os

directory = sys.argv[1]

results = {}
topics = []

for i in range(0, 69):

    filename = directory + "/2021_colbert_output_" + str(i)

    if (os.path.exists(filename)):

        with open(filename) as file:
            for line in file:
                line = line.rstrip("\n")

                line_split = line.split()
                score = line_split[4]
                topic = line_split[0]
                document = line_split[2]

                if (not topic in results):
                    results[topic] = {}
                results[topic][document] = score
        
                if (not topic in topics):
                    topics.append(topic)

    else:
        print ("File " + filename + " does not exists")


for topic in topics:
    results_per_topic = results[topic]
    
    i = 1
    for document, score in sorted(results_per_topic.items(), key=lambda item: item[1], reverse=True):
        if i <= 1000:
            new_line = topic + " Q0 " + document + " " + str(i) + " " + score + " Colbert"
            print(new_line)
            i = i+1


