require 'pry'
class Triangle
  # write code here
  def initialize (side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  def kind
    if is_valid?
      if @side_one == @side_two && @side_two == @side_three
        return :equilateral
      elsif @side_one == @side_two || @side_one == @side_three || @side_two == @side_three
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end
  class TriangleError < StandardError
    
  end
  
  private
  def is_valid?
    unless @side_one <= 0 || @side_two <=0 || @side_three<=0 || @side_one + @side_two <= @side_three || @side_two + @side_three <= @side_one || @side_one + @side_three <= @side_two
      return true
    end
  end
end


test = Triangle.new(4, 5 , 6)
test_two = Triangle.new(6, 6 ,6)
test_three = Triangle.new( 8, 8 , 9)
test_four = Triangle.new(9,9, 100)
binding.pry
