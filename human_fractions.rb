ALLOWED_BASES = [2, 3, 4, 6, 8]

class Rational
  
  def round_to_nearest(precision)
    multiplier = precision.to_r.abs
    if multiplier == 0
      raise ArgumentError.new 'Rounding to a precision of 0 is not rounding at all!'
    else
      (self / multiplier).round * multiplier
    end    
  end
  
  def to_fraction(allowed_bases = ALLOWED_BASES)
    allowed_bases.map { |b| 
      self.round_to_nearest Rational(1, b)
    }.sort { |x, y|
      (self - x).abs <=> (self - y).abs
    }.first
  end
  
end

class Float
  
  def to_fraction(allowed_bases = ALLOWED_BASES)
    self.to_r.to_fraction allowed_bases
  end
  
end

