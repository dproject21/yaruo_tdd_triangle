class Triangle
  attr_accessor :a, :b, :c
  def is_equilteral_triangle?
    preCondition? && @a == @b && @b== @c && @c == @a
  end
  def is_isoscales_triangle?
   preCondition? && (@a == @b || @b == @c || @c == @a)
  end
  def preCondition?
    unless [@a,@b,@c].find{|n| n.is_a?(Numeric) && n > 0} 
      false
    else
      true
    end
  end
end
