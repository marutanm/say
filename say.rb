#!/usr/bin/ruby
require 'dictionary'

def concat(array)
    return "say " + array.join(' ')
end

def say(words)
    system(concat(words))
end

def splitText(text)
    # p text
    i = 0
    p = 0
    splited = Array.new()
    while i < text.length
        if text.slice(i,1) =~ /[aiueo]/
            print i,text.slice(i,1)
        end
        i += 1
    end
end

p ARGV, ARGV.class
splitText(ARGV[0])




# say(ARGV)
exit
