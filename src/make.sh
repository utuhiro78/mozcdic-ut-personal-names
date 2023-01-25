#!/bin/bash

# Author: UTUMI Hirosi (utuhiro78 at yahoo dot co dot jp)
# License: Apache License, Version 2.0

tar xf personal-names.txt.tar.bz2

ruby convert_names_to_mozcdic.rb
ruby adjust_entries.rb personal-names.txt

tar cjf mozcdic-ut-personal-names.txt.tar.bz2 mozcdic-ut-personal-names.txt
mv mozcdic-ut-personal-names.txt* ../
