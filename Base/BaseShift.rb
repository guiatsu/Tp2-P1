module Base_Shift
    module Circular_Shift
        def Shift(line, pos)
            left = line[0..(pos-1)]
            right = line[pos..line.length]
            circular_shift = []
            circular_shift.push(right)
            circular_shift.push(left)
            circular_shift[0] = circular_shift[0].join(" ")
            circular_shift[1] = circular_shift[1].join(" ")
            circular_shift = circular_shift.join(" / ")
            return circular_shift
        end
    end
end