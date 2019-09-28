module Base_Input
    module Txt
        def initialize
            puts "Digite o nome do arquivo"
            filename = gets.chomp
            file = File.open("./Resources/"+filename)
            @lines = file.read.split("\n")

        end
    end
    module Index
        def line(index)
            return @lines[index]
        end
    end
    module Size
        def Get_size
            @lines.length
        end
    end
end