#!/bin/bash

for wf in *.wav;
do
	filename=$(basename "$wf")
      	sox $wf -c 1 -r 16000 ../$filename
	echo $filename
done
