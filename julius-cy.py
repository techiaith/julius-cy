#!/usr/bin/python
import pexpect
import os

if __name__ == "__main__":

    child = pexpect.spawn ('julius -input mic -lv 10000 -C julius.jconf', timeout=30)

    while True:
        try:
            child.expect('please speak')
            print child.before
        except KeyboardInterrupt:
            child.close(force=True)
            break
