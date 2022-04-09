#!/bin/bash

. "`dirname $0`/spec.sh"

exists_dir $HOME/bin/centraldogma-0.55.1
exists_file $HOME/bin/dogma
exists_file $HOME/bin/dogma_line
