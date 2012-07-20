require './human_fractions'
require 'test/unit'

class TestFraction < Test::Unit::TestCase
  
  def test_round_to_nearest
    assert_equal Rational(1, 4), Rational(26, 100).round_to_nearest('1/4')
    assert_equal Rational(-3, 2), Rational(-76, 48).round_to_nearest('1/2')
  end
  
  def test_humanize
    assert_equal Rational(1, 2), Rational(2, 3).humanize([2])
    assert_equal Rational(1, 3), Rational(3, 10).humanize
    assert_equal Rational(-1, 4), Rational(-27, 101).humanize
  end
  
  def test_to_fraction
    assert_equal Rational(1, 3), (1.01 / 3.0).to_fraction
    assert_equal Rational(5, 8), (4.99999 / 7.99998587598).to_fraction
  end
  
end