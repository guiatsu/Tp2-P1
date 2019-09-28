module Base_Stop_Word
    module Read_Stop_Words
        def initialize
            file = File.open("./Resources/StopWord.txt")
            @StopWords = file.read.split("\n")
        end
    end
    module Verify_Stop_Word
        def Is_Stop_Word(word)
            return @StopWords.include?(word)
        end
    end
end
