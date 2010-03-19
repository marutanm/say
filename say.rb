#!/usr/bin/ruby
require 'dictionary'

def concat(array)
    p "say " + array.join(' ')
    return "say " + array.join(' ')
end

def say(words)
    system(concat(words))
end

def splitText(array)
    i = 0
    point = 0
    splited = Array.new()
    array.map{|text|
        p text
        while i < text.length
            if text.slice(i,1) =~ /[aiueo]/
                # print i , " : " , text.slice(i,1),"\n"
                # p text.slice(point..i)
                splited.push(text.slice(point..i))
                point = i + 1
            end
            i += 1
        end
        i = 0
        point = 0
    }
    return splited
end

p ARGV#, ARGV.class
d = KanaDict.new
words = d.phonetic(splitText(ARGV))
p words
say(words)

exit
