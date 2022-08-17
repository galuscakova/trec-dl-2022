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

print("<parameters>")
with open(input_filename) as infile:
    line = infile.readline()
    while line:
        #print(line)
        line = line.rstrip()
        line = line.replace('-', ' ')
        line = line.translate(str.maketrans('', '', string.punctuation))
        lid, ltext = re.split('\t', line)
        newline = "<query>\n<number>" + lid + "</number>\n<text>" + ltext + "</text>\n</query>"
        print(newline)
        line = infile.readline()
print("</parameters>")
