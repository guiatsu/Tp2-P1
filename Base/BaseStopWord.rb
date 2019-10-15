module Base_Stop_Word
    module Read_Stop_Words  #Leitura das StopWords
        def initialize
            file = File.open("./Resources/StopWord.txt")
            @StopWords = file.read.split("\n")
            
        end
    end
    module Verify_Stop_Word #Verificacao se eh uma StopWord
        def Is_Stop_Word(word)
            return @StopWords.include?(word+"\r")
        end
    end
end

