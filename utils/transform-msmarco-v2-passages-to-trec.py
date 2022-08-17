#!/home/mrim/galuscap/tools/environments/reranking/.reranking/bin/python3

import re
import os
import gzip
import json
import sys, getopt

#"/home/mrim/galuscap/experiments/msmarco/bm25/run.msmarco-v2-passage-2021"
msmarco_directory = "/home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage/"
trec_directory = "/home/mrim/data/collection/msmarco_v2/passage/msmarco_v2_passage_trec_normalized/"


# Read MSMARCO
for msmarco_filename in os.listdir(msmarco_directory):
    print(msmarco_filename)

    output_filename = trec_directory + "/" + msmarco_filename
    output_text = ""
    
    with gzip.open(msmarco_directory + "/" + msmarco_filename, 'r') as msmarco_file:
        for json_line in msmarco_file:
            json_str = json_line.decode('utf-8')
            data = json.loads(json_str)
            pid = data['pid']
            passage = data['passage']
            passage = re.sub(r'[^ \w+]', '', passage)
            passage = ' '.join(passage.split())

            if (not (not passage or passage.isspace())):
                text = "<DOC>\n<DOCNO>"  + pid + "</DOCNO>\n<DOCID>" + pid + "</DOCID>\n<TEXT>\n" + passage + "\n</TEXT>\n</DOC>\n"
                output_text = output_text + text
            
    output_file = open(output_filename,'w')
    print(output_text, file=output_file)
