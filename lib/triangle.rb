class Triangle
  # getter and setter
  attr_accessor :side1, :side2, :side3
  # initialize
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def kind
  #  call validate triangle
    validate_triangle
      if @side1 == @side2 && @side2 == @side3 && @side1 == @side3
        return :equilateral
      elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
        return :isosceles
      else
        return :scalene 
      end
  end

    def greater_than_zero?
      [side1,side2,side3].all?(&:positive?)
    end

    def  valid_triangle_inequality?
      side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1
    end
    
    def validate_triangle
      raise TriangleError unless greater_than_zero? && valid_triangle_inequality?
    end


  # defining error class
  class TriangleError < StandardError
    def message
      puts "Not a triangle"
    end
  end

end
