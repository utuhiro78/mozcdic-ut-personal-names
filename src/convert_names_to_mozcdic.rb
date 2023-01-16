#! /usr/bin/env ruby
# coding: utf-8

# Author: UTUMI Hirosi (utuhiro78 at yahoo dot co dot jp)
# License: Apache License, Version 2.0

require 'nkf'

filename = "personal-names.txt"
dicname = "mozcdic-ut-personal-names.txt"
id_mozc = "1847"

file = File.new(filename, "r")
	lines = file.read.split("\n")
file.close

lines.length.times do |i|
	s = lines[i].split("	")
	yomi = s[0]
	hyouki = s[-1]

	lines[i] =  yomi + "	" + id_mozc + "	" + id_mozc + "	8000	" + hyouki
end

# 重複する行を削除
lines = lines.uniq.sort

dicfile = File.new(dicname, "w")
	dicfile.puts lines
dicfile.close
