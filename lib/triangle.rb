class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize (a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a <=0 || @b<=0 || @c <= 0
        raise TriangleError
    elsif @a <=0 && @b<=0 && @c <= 0
        raise TriangleError
    elsif @a + @b < @c || @b + @c < @a || @a + @c <= @b
        raise TriangleError
    elsif @a == @b && @a != @c || @a == @c && @a != @b || @b == @c && @b != @a
      :isosceles
    elsif @a == @b && @a == @c
      :equilateral
    else @a != @b && @b != @c && @a != @c
      :scalene
    end
  end

  class TriangleError < StandardError
    # triangle error code
    def message
      puts "This is not a triangle. Please try again!"
    end
  end
end
