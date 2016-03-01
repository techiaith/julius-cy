#!/usr/bin/python
import pexpect
import os
import sys

JULIUS_CMD =  "julius.dSYM" if sys.platform == "darwin" else "julius"
JULIUS_CONF = "julius-osx.jconf" if sys.platform == "darwin" else "julius.jconf"

if __name__ == "__main__":

    child = pexpect.spawn ("%s -input mic -lv 10000 -C \"%s\"" % (JULIUS_CMD, JULIUS_CONF), timeout=30)
    while True:
        try:
            child.expect("please speak")
            print(child.before)
        except KeyboardInterrupt:
            child.close(force=True)
            break
