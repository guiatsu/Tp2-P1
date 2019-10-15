module Base_Stop_Word

    module Verify_Stop_Word #Verificacao se eh uma StopWord
        def Is_In(word)
            return @lines.include?(word+"\r")
        end
    end
end

