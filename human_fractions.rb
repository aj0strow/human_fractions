ALLOWED_BASES = [2, 3, 4, 6, 8]

class Rational
  
  def round_to_nearest(precision)
    if precision == 0
      raise ArgumentError.new 'Rounding to a precision of 0 is not rounding at all!'
    else
      multiplier = precision.to_r.abs
      (self / multiplier).round * multiplier
    end
  end
  
  def to_fraction(*allowed_bases)
    allowed_bases = ALLOWED_BASES unless allowed_bases.any?
    allowed_bases.flatten.map { |base| 
      round_to_nearest Rational(1, base)
    }.sort { |x, y|
      (self - x).abs <=> (self - y).abs
    }.first
  end
  
end

class Float
  
  def to_fraction(*allowed_bases)
    to_r.to_fraction *allowed_bases
  end
  
  def round_to_nearest(precision)
    to_r.round_to_nearest precision
  end
  
end

