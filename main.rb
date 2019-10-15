require './Default/DefaultInput'
require './Default/DefaultShift'
require './Default/DefaultStopWord'
require './Default/DefaultOutput'

inp = Default_Input.new(true, "")
shif = Default_Shift.new
stp = Default_Stop_Word.new
out = Default_Output.new
output = []
final = inp.Get_size
for i in 0...final do
    aux = inp.line(i)
    output.push("[ " + aux + " ]")
    a = inp.line(i).split(" ")
    keywords = []
    circular_shifts = []
    a.each do |x|
        if (not(stp.Is_In(x)) and not(x.count("0-9")>0))
            keywords.push(x)
        end
    end
    a.each do |x|
        if(not(a.index(x) == 0) and keywords.include?(x))
            circular_shifts.push(shif.Shift(a,a.index(x)))
        end
    end

    circular_shifts.sort_by(&:downcase)

    
    output.push(circular_shifts.sort)
    output.push("\n")
end
out.out(output)