import getopt
import sys
import os
import re
import string

exclude = set(string.punctuation)

input_filename = ""

options, remainder = getopt.getopt(sys.argv[1:], 'i:', ['inputfile='])

for opt, arg in options:
    if opt in ('-i', '--inputfile'):
        input_filename = arg
        if (not os.path.exists(input_filename)):
            sys.exit("Error: Inputfile does not exists")


def get_sdm_query(query,lambda_t=0.8,lambda_o=0.1,lambda_u=0.1):
   words = query.split()
   if len(words)==1:
      return f"#combine( {query} )"
   terms = " ".join(words)
   ordered = "".join([" #1({}) ".format(" ".join(bigram)) for bigram in zip(words,words[1:])])
   unordered = "".join([" #uw8({}) ".format(" ".join(bigram)) for bigram in zip(words,words[1:])])
   indri_query = f"#weight({lambda_t} #combine( {terms} ) {lambda_o} #combine({ordered}) {lambda_u} #combine({unordered}))"
   return indri_query

print("<parameters>")
with open(input_filename) as infile:
    line = infile.readline()
    while line:
        #print(line)
        line = line.rstrip()
        line = line.replace('-', ' ')
        line = line.translate(str.maketrans('', '', string.punctuation))
        lid, ltext = re.split('\t', line)
        ltext_sdm = get_sdm_query(ltext)
        newline = "<query>\n<number>" + lid + "</number>\n<text>" + ltext_sdm + "</text>\n</query>"
        print(newline)
        line = infile.readline()
print("</parameters>")
