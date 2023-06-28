import getopt
import sys
import os
import re
import string
from gensim.models import KeyedVectors
from gensim.test.utils import datapath, get_tmpfile
from gensim.scripts.glove2word2vec import glove2word2vec

input_filename = ""
word2vec_path = "/fs/clip-scratch/petra/podcasts/glove.6B.300d_w2vformat.txt"

options, remainder = getopt.getopt(sys.argv[1:], 'i:w:', ['inputfile=', 'word2vec='])

for opt, arg in options:
    if opt in ('-i', '--inputfile'):
        input_filename = arg
        if (not os.path.exists(input_filename)):
            sys.exit("Error: Inputfile does not exists")
    if opt in ('-w', '--word2vec'):
        word2vec_path = arg
        if (not os.path.exists(word2vec_path)):
            sys.exit("Error: Word2vec file does not exists")

if (word2vec_path):
    model = KeyedVectors.load_word2vec_format(word2vec_path)

with open(input_filename) as infile:
    line = infile.readline()
    while line:
        #print(line)
        lid, ltext = re.split('\t', line)
        if (word2vec_path):
            ltext_array = ltext.split()
            ltext_array_existing = []
            for word in ltext_array:
                if word in model.vocab:
                    ltext_array_existing.append(word)
            expanded = model.most_similar(positive=ltext_array_existing, topn=10)
            print(expanded)
            expanded_keys = expanded.keys()
            expanded_keys_joined = "#".join(expanded_keys)
            newline = "<DOC>\n<DOCID>" + lid + "</DOCID>\n<DOCNO>" + lid + "</DOCNO>\n<TEXT>" + ltext + " " + expanded_keys_joined + "</TEXT>\n</DOC>"
        else:
            newline = "<DOC>\n<DOCID>" + lid + "</DOCID>\n<DOCNO>" + lid + "</DOCNO>\n<TEXT>" + ltext + "</TEXT>\n</DOC>"
        print(newline)
        line = infile.readline()

