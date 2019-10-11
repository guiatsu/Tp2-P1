require './Default/DefaultShift'
class Test_Shift < Test::Unit::TestCase
    def setup
        @shift = Default_Shift.new
    end
    def test_shift
        assert_equal 'model checking of delta-oriented software product lines / Incremental', @shift.Shift(["Incremental","model","checking","of","delta-oriented","software","product","lines"],1)
    end
    def test_shift1
        assert_equal 'Product Lines to achieve Monotonicity / Refactoring Delta-Oriented', @shift.Shift(["Refactoring","Delta-Oriented","Product","Lines","to","achieve","Monotonicity"],2)
    end
    def test_shift2
        assert_equal 'large-scale systems / Delta-oriented model-based integration testing of', @shift.Shift(["Delta-oriented","model-based","integration","testing","of","large-scale","systems"],5)
    end
    def test_shift3
        assert_equal 'Reconciliation of Enterprise Software Products Lines / A Delta Oriented Approach to the Evolution and', @shift.Shift(["A","Delta","Oriented","Approach","to","the","Evolution","and","Reconciliation","of","Enterprise","Software","Products","Lines"], 8)
    end

end