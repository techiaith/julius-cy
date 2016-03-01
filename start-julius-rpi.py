#!/usr/bin/python
import pexpect
import os
import sys

JULIUS_CMD =  "julius.dSYM" if sys.platform == "darwin" else "julius"
JULIUS_CONF = "julius-osx.jconf" if sys.platform == "darwin" else "julius.jconf"

if __name__ == "__main__":

    child = pexpect.spawn ("julius -input mic -lv 10000 -C \"julius.jconf\"", env= {"ALSADEV":"plughw:1,0"}, timeout=30)
    while True:
        try:
            child.expect("please speak")
            print(child.before)
        except KeyboardInterrupt:
            child.close(force=True)
            break
