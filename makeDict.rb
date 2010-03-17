#!/usr/bin/ruby

file = open("dictionary.txt").read
temp = file.split("\n")
temp.map!{|e|
    e = e + ":" + e
}
p temp
foo = File.open("hoge.txt",'w')
foo.puts temp
foo.close

# file = open("dictionary.txt").read
# temp = file.split("\n")
# fuga = Hash[*temp.map{|e| e.split(":")}.flatten]
# p "fuga", fuga, fuga.class
exit
