require 'pry'

class Triangle
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(equilateral, isosceles, scalene)
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene
  end

  def kind()
    if (@equilateral <= 0) || (@isosceles <= 0) || (@scalene <= 0)
      raise TriangleError
    elsif (@equilateral+@isosceles <= @scalene) || (@equilateral+@scalene <= @isosceles) || (@isosceles + @scalene <= @equilateral)
      raise TriangleError
    else

      if (@equilateral == @isosceles) && (@isosceles == @scalene)
        :equilateral
      elsif (@equilateral == @isosceles) || (@isosceles == @scalene) || (@equilateral == @scalene)
        :isosceles
      elsif (@equilateral != @isosceles) || (@isosceles != @scalene) || (@equilateral != @scalene)
        :scalene
      end

    end
  end


  class TriangleError < StandardError

  end
end
