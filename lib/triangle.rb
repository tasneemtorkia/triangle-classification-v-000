class Triangle
  
  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    if (@l1 <= 0) || (@l2 <= 0) || (@l3 <= 0)
      raise TriangleError
      
    elsif (@l1 + @l2 <= @l3) || (@l1 + @l3 <= @l2) || (@l2 + @l3 <= @l1)
    
      raise TriangleError
      
    else
      if (@l1 == @l2) && (@l2 == @l3)
        :equilateral
        
      elsif (@l1 == @l2) || (@l2 == @l3) || (@side_1 == @side_3)
        :isosceles
      elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
        :scalene
      end
    end

  end
end 
