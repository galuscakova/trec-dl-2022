#!/usr/bin/python

import sys

filename = sys.argv[1]

with open(filename) as fp:
    for line in fp:
        line = line.rstrip("\n")

        line_split = line.split(',')
        print (line_split[0] + " " + line_split[1] + " Q0 " + line_split[3] + " " + line_split[4] + " " + line_split[5] + " DPH")
