#!/bin/bash
julius -input rawfile -filelist wavlist -C julius.jconf > juliusTestOutput
cat juliusTestOutput
