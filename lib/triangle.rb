class Triangle
  # getter and setter
  attr_accessor :side1, :side2, :side3
   # initialize
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if @side1 > 0 && @side2 > 0 && @side3 > 0 && @side1 + @side2 > @side3 && @side2 + @side3 > @side1 && @side3 + @side1 > @side2
      if @side1 == @side2 && @side2 == @side3
        return :equilateral
      elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
        return :isosceles
      elsif @side1 != @side2 && @side2 != @side3
        return :scalene
      end
    else
      begin
        raise TriangleError        
      end 
    end
  end

  class TriangleError < StandardError
    def message
      puts "Not a triangle!"      
    end
  end

end