class Triangle
  define_method(:initialize) do |side_a, side_b=side_a, side_c=side_a|
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c || 0
  end

  define_method(:isTriangle?) do
    @side_a != 0 && @side_b != 0 && @side_c != 0
  end
  
end
