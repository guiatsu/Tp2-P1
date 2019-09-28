require './Default/DefaultInput'
require './Default/DefaultShift'
require './Default/DefaultStopWord'
require './Default/DefaultOutput'

inp = Default_Input.new
shif = Default_Shift.new
stp = Default_Stop_Word.new
out = Default_Output.new
output = []
final = inp.Get_size
for i in 0...final do
    aux = inp.line(i).delete "\r"
    output.push("[ " + aux + " ]")
    a = inp.line(i).split(" ")
    keywords = []    
    a.each do |x|
        if not(stp.Is_Stop_Word(x))
            keywords.push(x)
        end
    end
    a.each do |x|
        if(not(a.index(x) == 0) and a.include?(x))
            output.push(shif.Shift(a,a.index(x)))
        end
    end
    output.push("\n")
end
out.out(output)