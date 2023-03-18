#!/bin/bash

# Stuff to be run daily.

# Run stress test for a minute
stress --cpu 2 --timeout 60


# Sync, and update this file itself.
cd /home/ubuntu && git clone https://github.com/youngelf/o_remote.git
for i in  /home/ubuntu/o_remote; do
    ln -s $i .
done
