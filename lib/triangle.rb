class Triangle
  define_method(:initialize) do |side_a, side_b=side_a, side_c=side_a|
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c || 0
  end

  define_method(:isTriangle?) do
    sides = (@side_a != 0 && @side_b != 0 && @side_c != 0)

    sides_a_b = (@side_a + @side_b) >= @side_c
    sides_b_c = (@side_b + @side_c) >= @side_a
    sides_c_a = (@side_c + @side_a) >= @side_b

    sides && sides_a_b && sides_b_c && sides_c_a
       
  end


end
