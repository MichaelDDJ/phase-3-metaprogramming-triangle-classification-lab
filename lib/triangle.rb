require 'pry'
class Triangle
  attr_accessor :a, :b, :c

  def initialize (a ,b ,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (((a + b) <= c) || ((a + c) <= b) || ((b + c) <= a))
      raise TriangleError
    elsif (a <= 0 || b <= 0 || c <= 0)
      raise TriangleError
    else
      if (a == b && b == c)
        :equilateral
      elsif ((a == b && b != c) || (a == c && b != c) || (b == c && a != c))
        :isosceles
      elsif (a != b && b != c && c != a)
        :scalene  
      end
    end
  end

  class TriangleError < StandardError
  end
end

binding.pry
