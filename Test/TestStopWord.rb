require './Default/DefaultStopWord'
class Test_Stop_Word < Test::Unit::TestCase
    def setup
        @stop = Default_Stop_Word.new
    end
    def test_is_stop1
        assert_equal true, @stop.Is_Stop_Word("we've")
    end
    def test_is_stop2
        assert_equal false, @stop.Is_Stop_Word("batata")
    end
    def test_is_stop3
        assert_equal false, @stop.Is_Stop_Word("cacatua")
    end
    def test_is_stop4
        assert_equal true, @stop.Is_Stop_Word("due")
    end
    def test_is_stop5
        assert_equal false, @stop.Is_Stop_Word("coringa")
    end
    def test_is_stop6
        assert_equal false, @stop.Is_Stop_Word("batima")
    end
    def test_is_stop7
        assert_equal true, @stop.Is_Stop_Word("you")
    end
    def test_is_stop8
        assert_equal true, @stop.Is_Stop_Word("et-al")
    end

end