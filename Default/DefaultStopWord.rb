require './Base/BaseStopWord'
class Default_Stop_Word
    include Base_Stop_Word::Read_Stop_Words
    include Base_Stop_Word::Verify_Stop_Word
end