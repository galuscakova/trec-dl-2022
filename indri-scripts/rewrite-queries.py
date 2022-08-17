import sys
import os
import re
import string

input_filename = sys.argv[1]

print("<parameters>")

with open(input_filename) as f:
	for line in f:
		line = line.rstrip('\n')
		num, text = line.split("\t")
		print ("<query>")
		print ("<number>" + str(num) + "</number>")
		print ("<text> #combine(" + text + ") </text>")
		print ("</query>")

print("</parameters>")
