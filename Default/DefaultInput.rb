require './Base/BaseInput'
class Default_Input #Utilizacao dos Mixins para Implementacao da BaseInput
    include Base_Input::Txt
    def initialize(flag, name)
        read_file(flag, name)
    end
    include Base_Input::Index
    include Base_Input::Size
end
