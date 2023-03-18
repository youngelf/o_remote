#!/bin/bash

# Stuff to be run daily.

# And also run a bigger test for half an hour, in background
stress --cpu 2 --timeout 1800 &

# Sync, and update this file itself.
cd /home/ubuntu && git clone https://github.com/youngelf/o_remote.git
for i in  /home/ubuntu/o_remote; do
    ln -s $i .
done
