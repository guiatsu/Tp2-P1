require './Base/BaseStopWord'
require './Base/BaseInput'
class Default_Stop_Word #Utilizacao dos Mixins para Implementacao da BaseStopWord
    include Base_Stop_Word::Verify_Stop_Word
    include Base_Input::Txt
    def initialize()
        read_file(false, "StopWord2.txt")
    end
end