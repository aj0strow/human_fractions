require './human_fractions'
require 'test/unit'

class TestFraction < Test::Unit::TestCase
  
  def test_rational_round_to_nearest
    assert_raise ArgumentError do Rational(1, 2).round_to_nearest(0) end
    assert_equal Rational(1, 4), Rational(26, 100).round_to_nearest('1/4')
    assert_equal Rational(-3, 2), Rational(-76, 48).round_to_nearest('1/2')
  end
  
  def test_rational_to_fraction
    assert_equal Rational(1, 2), Rational(2, 3).to_fraction([2])
    assert_equal Rational(1, 3), Rational(3, 10).to_fraction
    assert_equal Rational(-1, 4), Rational(-27, 101).to_fraction
  end
  
  def test_float_round_to_nearet
    assert_equal Rational(1, 4), (0.251).round_to_nearest('1/4')
    assert_equal Rational(-3, 2), (-1.498).round_to_nearest('1/2')
  end
  
  def test_float_to_fraction
    assert_equal Rational(1, 3), (1.01 / 3.0).to_fraction
    assert_equal Rational(5, 8), (4.99999 / 7.99998587598).to_fraction
    assert_equal Rational(1, 4), (0.3).to_fraction( 2, 4 )
  end
  
end