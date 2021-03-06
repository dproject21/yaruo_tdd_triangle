class Triangle
  attr_accessor :a, :b, :c
  def is_equilteral_triangle?
   not_nil? && preCondition? && @a == @b && @b== @c && @c == @a
  end
  def is_isoscales_triangle?
   not_nil? && preCondition? && (@a == @b || @b == @c || @c == @a)
  end
  def is_triangle?
   not_nil? && preCondition? && (a < b + c) && (b < a + c) && ( c < a + b) 
  end
  def is_scalene_triangle?
    return is_triangle? && !is_isoscales_triangle?
  end
  def preCondition?
    unless [@a,@b,@c].find{|n| n.is_a?(Numeric) && n > 0} 
      false
    else
      true
    end
  end

  def not_nil?
    if (@a.nil? || @b.nil? || @c.nil?) 
      false
    else
      true
    end
  end

end
