require 'minitest/autorun'
require './convert_length'

class ConvertLengthTest < Minitest::Test
  def test_convert_length
    assert_equal 39.37, convert_length(1,form: :m,to: :in)
    assert_equal 0.38, convert_length(15,form: :in,to: :m)
  end
end