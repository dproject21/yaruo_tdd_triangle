class Triangle
  attr_accessor :a, :b, :c
  def is_equilteral_triangle?
    preCondition? && @a == @b && @b== @c && @c == @a
  end
  def is_isoscales_triangle?
   preCondition? && (@a == @b || @b == @c || @c == @a)
  end
  def is_triangle?
    preCondition? && (a < b + c) && (b < a + c) && ( c < a + b) 
  end
  def is_scalene_triangle?
    return is_triangle? && !is_isoscales_triangle?
  end
  def preCondition?
    if (@a.nil? || @b.nil? || @c.nil?) 
      return false
    end
    
    unless [@a,@b,@c].find{|n| n.is_a?(Numeric) && n > 0} 
      false
    else
      true
    end
  end
end
