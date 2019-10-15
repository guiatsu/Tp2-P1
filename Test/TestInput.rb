require './Default/DefaultInput'
class Test_Input < Test::Unit::TestCase
    def setup
        @input = Default_Input.new(false, "Input.txt")
    end
    def test_line
        assert_equal 'Incremental model checking of delta-oriented software product lines', @input.line(0)
    end
    def test_line1
        assert_equal 'Parametric DeltaJ 1.5: Propagating Feature Attributes into Implementation Artifacts', @input.line(1)
    end
    def test_line2
        assert_equal 'On type checking Delta-Oriented product lines', @input.line(2)
    end
    def test_size
        assert_equal 54, @input.Get_size
    end

end