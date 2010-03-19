class KanaDict
    def initialize()
        file = open("dictionary.txt").read
        temp = file.split("\n")
        @dict = Hash[*temp.map{|e| e.split(":")}.flatten]
        # p "@dict", @dict, @dict.class
    end
   
    def phonetic(text)
        p text
        text.map!{|e|
            # p e + ":" + @dict[e]
            if (!@dict[e])
                e = e
            else
            e = @dict[e]
            end
        }
        return text
    end

end
