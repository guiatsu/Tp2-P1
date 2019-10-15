require './Default/DefaultShift'
require './Base/BaseInput'
class Test_Shift < Test::Unit::TestCase
    include Base_Input::Txt
    include Base_Input::Index
    def setup
        read_file(false, "Input.txt")
        
        @shift = Default_Shift.new
    end
    def test_shift
        assert_equal 'model checking of delta-oriented software product lines / Incremental', @shift.Shift(line(0).split(" "),1)
    end
    def test_shift1
        assert_equal 'Product Lines to achieve Monotonicity / Refactoring Delta-Oriented', @shift.Shift(line(3).split(" "),2)
    end
    def test_shift2
        assert_equal 'large-scale systems / Delta-oriented model-based integration testing of', @shift.Shift(line(7).split(" "),5)
    end
    def test_shift3
        assert_equal 'Reconciliation of Enterprise Software Products Lines / A Delta Oriented Approach to the Evolution and', @shift.Shift(line(12).split(" "), 8)
    end

end