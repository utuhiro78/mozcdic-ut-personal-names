#!/bin/bash

# Author: UTUMI Hirosi (utuhiro78 at yahoo dot co dot jp)
# License: APACHE LICENSE, VERSION 2.0

tar xf personal-names.txt.tar.bz2

ruby convert_names_to_mozcdic.rb
ruby adjust_entries.rb personal-names.txt

tar cjf mozcdic-ut-personal-names.txt.tar.bz2 mozcdic-ut-personal-names.txt
mv mozcdic-ut-personal-names.txt* ../

rm -rf mozcdic-ut-personal-names-release/
rsync -a ../* mozcdic-ut-personal-names-release --exclude=jawiki-* --exclude=mecab-* --exclude=mozcdic-ut-*.txt --exclude=personal-names.txt
