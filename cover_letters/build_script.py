#! /usr/bin/env python3

import glob
import os

print("Building cover letters...")
letters = glob.glob("cover_letters/*.tex")
for letter in letters:
    loc = letter.split('.')[0].split('_')[-1]
    if loc == 'base':
        print("Skipping base file")
        continue
    output = 'pdfs/brghena-cover-{}.pdf'.format(loc)
    print("\nBuilding {}".format(output))
    cmd = './latexrun --latex-args="-shell-escape" -Wall {} -o {}'
    os.system(cmd.format(letter, output))
print("\nComplete")

