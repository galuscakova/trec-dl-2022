import getopt
import sys
import os
import re
import string
from gensim.models import KeyedVectors
from gensim.test.utils import datapath, get_tmpfile
from gensim.scripts.glove2word2vec import glove2word2vec

input_filename = ""
#word2vec_path = "/fs/clip-scratch/petra/podcasts/glove.6B.300d_w2vformat.txt"
word2vec_path = ""

options, remainder = getopt.getopt(sys.argv[1:], 'i:w:', ['inputfile=', 'word2vec='])

exclude = set(string.punctuation)


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

print("<parameters>")
with open(input_filename) as infile:
    line = infile.readline()
    while line:
        line = line.rstrip()
        line = line.replace('-', ' ')
        line = line.translate(str.maketrans('', '', string.punctuation))
        lid, ltext = re.split('\t', line)

        #print(line)
        if (word2vec_path):
            ltext_array = ltext.split()
            ltext_array_existing = []
            for word in ltext_array:
                #if word in model.vocab:
                if word in list(model.index_to_key):
                    ltext_array_existing.append(word)
            expanded = ""
            if ltext_array_existing:
                 expanded = model.most_similar(positive=ltext_array_existing, topn=10)
            #print(expanded)
            expanded_keys = ""
            for expanded_word in expanded:
                expanded_keys = expanded_keys + expanded_word[0] + " "
            newline = "<query>\n<number>" + lid + "</number>\n<text>#combine(" + ltext + " " + expanded_keys + ")</text>\n</query>"
        else:
            newline = "<query>\n<number>" + lid + "</number>\n<text>#combine(" + ltext + ")</text>\n</query>"
        print(newline)
        line = infile.readline()
print("</parameters>")
