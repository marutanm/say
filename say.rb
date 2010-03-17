#!/usr/bin/ruby
require 'dictionary'

def concat(array)
    p "say " + array.join(' ')
    return "say " + array.join(' ')
end

def say(words)
    system(concat(words))
end

def splitText(text)
    # p text
    i = 0
    point = 0
    splited = Array.new()
    while i < text.length
        if text.slice(i,1) =~ /[aiueo]/
            # print i , " : " , text.slice(i,1),"\n"
            # p text.slice(point..i)
            splited.push(text.slice(point..i))
            point = i + 1
        end
        i += 1
    end
    return splited
end

p ARGV#, ARGV.class
splited = splitText(ARGV[0])
d = KanaDict.new
words = d.phonetic(splited)
p words
say(words)


# say(ARGV)
exit
