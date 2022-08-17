#!/usr/bin/python

import re
import os
import gzip
import json
import sys, getopt

input_filename = sys.argv[1]
topk = 100
beginning_from = -1

with open(input_filename) as rf:

    for line in rf:

        line = line.rstrip("\n")
        line_query_id, q0, line_doc_id, line_rank, line_score, system = re.split(r' ', line)

        if (beginning_from == -1):
            beginning_from = int(line_rank)

        if (int(line_rank) < beginning_from + topk):
            print(line)

