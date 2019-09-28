module Base_Output
    module Prompt
        def out(output)
            puts output
        end
    end
    module Files
        def out(output)
            file = File.open("Output.txt", "w")
            file.puts output
        end
    end
end