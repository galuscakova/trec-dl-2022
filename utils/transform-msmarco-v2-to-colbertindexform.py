#!/usr/bin/python3

import re
import os
import gzip
import json
import rapidjson
import sys, getopt

#"/home/mrim/galuscap/experiments/msmarco/bm25/run.msmarco-v2-passage-2021"
msmarco_directory = "/home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage/"
colbert_directory = "/home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_colbert/"

# Read MSMARCO
for msmarco_filename in os.listdir(msmarco_directory):
    print(msmarco_filename)

    output_msmarco_filename = msmarco_filename.rstrip(".gz")

    output_filename = colbert_directory + "/" + output_msmarco_filename + ".jsonl"
    output_text = ""
    
    with gzip.open(msmarco_directory + "/" + msmarco_filename, 'r') as msmarco_file:
        #for json_line in msmarco_file:
        #    json_str = json_line.decode('utf-8','ignore').encode("utf-8")
        #    data = rapidjson.loads(json_str)
        #    
        #    pid = data['pid']
        #    passage = data['passage']
        #
        #    #output_data = {'id': pid, 'contents': passage}
        #    #print (output_data)
        #    #output_text = output_text + rapidjson.dumps(output_data) + "\n"  
        #    #print(output_text)
        #
        #    output_text_line = "{'id': " + pid + ", 'contents': \"" + passage + "\"}"
        #    output_text_line = output_text_line.replace('\n'," ")
        #    print(output_text_line)
        #
        #    output_text = output_text + output_text_line + "\n"

        output_lines = []

        linenum = 0
        for json_line in msmarco_file:
            #print(json_line)
            json_line = json_line.decode("utf-8")
            json_line = json_line.rstrip("\r\n")
            json_line = json_line.replace('"pid"', '"id"')
            json_line = json_line.replace('"passage"', '"contents"')
            json_line = json_line.replace('\\n', ' ')

            while (re.search(r'\\\s+', json_line)):
                json_line = re.sub(r'\\\s+', ' ', json_line)
            json_line = json_line.replace('\\ ', ' ')
            #print(json_line)

            if (linenum % 1000 == 0):
                print (str(linenum))

            output_lines.append(json_line + "\n")
            #output_text = output_text.append(json_line + "\n")
            linenum = linenum + 1

    output_text = "".join(output_lines)
    output_text = output_text.rstrip("\n")
    output_file = open(output_filename,'w')
    print(output_text, file=output_file)
