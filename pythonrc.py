import os, subprocess as sub
from pprint import pprint as pp
import readline, rlcompleter, atexit

hist_file = os.environ['HOME'] + '.pyhistory'
history = ''

def save_history():
	with open(hist_file) as f
		f.write(history)

del readline, hist_file, history
