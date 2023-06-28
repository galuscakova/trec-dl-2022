#!/home/mrim/galuscap/tools/environments/reranking/.reranking/bin/python3

import re
import os
import gzip
import json
import sys, getopt
#from pyserini.search.lucene import LuceneSearcher
from pyserini.search import FaissSearcher


input_filename = sys.argv[1]

#searcher = LuceneSearcher.from_prebuilt_index('msmarco-passage-tct_colbert-v2-bf')
searcher = FaissSearcher('/home/mrim/galuscap/.cache/pyserini/indexes/dindex-msmarco-passage-tct_colbert-v2-hnp-bf-20210608-5f341b.c3c3fc3a288bcdf61708d4bba4bc79ff/', 'facebook/dpr-question_encoder-multiset-base')

with open(input_filename) as input_file:
    results = input_file.readlines()

    for result in results:
        query_id, q0, doc_id, rank, score, system = re.split(r' ', result)
        doc = searcher.doc(int(doc_id))
        json_doc = json.loads(doc.raw())
        real_doc_id = json_doc['pid']

        print (query_id + " Q0 " + real_doc_id + " " + rank + " " + score + " " + system.rstrip())
