#!/bin/env python2.7

import sys
sys.dont_write_bytecode = True

lines = [line.strip() for line in sys.stdin.readlines()[0].split('\\n')]

from modules.converter import toCsv

try:
    print('\n'.join(toCsv(lines)))
except AssertionError as e:
    print(e)
