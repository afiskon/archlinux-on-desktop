#!/usr/bin/env python3

import subprocess
import glob
import os

for fname in glob.glob("*.mp3"):
    cmd = """mp3info -p "%a - %t.mp3" -- "{}" """.format(fname)
    at = subprocess.check_output(cmd, shell=True)
    at = at.decode('ascii', 'replace').strip()
    if fname != at:
        print("{} -> {}".format(fname, at))
        os.rename(fname, at)
