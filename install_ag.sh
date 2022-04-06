#!/bin/bash

gr clone git@github.com:bitterfox/the_silver_searcher.git

cd `gr root`/github.com/bitterfox/the_silver_searcher

./autogen.sh
./configure
make

sudo make install
