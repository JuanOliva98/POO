class Triangle < Figuras
	def initialize( p1, p2, p3 )
		@p1 = p1
		@p2 = p2
		@p3 = p3
	end
	
	def perimeter
		@lado1 = @p1.distance_to(@p2)
		@lado2 = @p2.distance_to(@p3)
		@lado3 = @p3.distance_to(@p1)
		@perimeter = @lado1 + @lado2 + @lado3
	end

	def area
		@semi_perimeter = perimeter / 2
		Math.sqrt(@semi_perimeter * (@semi_perimeter-@lado1) * (@semi_perimeter-@lado2) * (@semi_perimeter-@lado3) )
	end
end