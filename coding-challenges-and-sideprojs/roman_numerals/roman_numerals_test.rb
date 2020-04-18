
require 'test/unit'
require_relative 'roman_numerals'

class RomanNumeralsTest < Test::Unit::TestCase
  def test_for_num_21
    assert_equal('XXI', RomanNumerals.solution(21))
  end

  def test_for_num_1
    assert_equal('I', RomanNumerals.solution(1))
  end

  def test_for_num_94
    assert_equal('XCIV', RomanNumerals.solution(94))
  end

  def test_for_num_666
    assert_equal('DCLXVI', RomanNumerals.solution(666))
  end

  def test_for_num_2014
    assert_equal('MMXIV', RomanNumerals.solution(2014))
  end


end
