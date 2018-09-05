class Triangle < Figuras
	attr_reader :p1
	attr_reader :p2
	attr_reader :p3

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

	def ==(other)
		return nil unless other.kind_of? Triangle

		return false unless self.p1 == other.p1 && self.p2 == other.p2 && self.p3 == other.p3
		true
	end

	def to_s
		"Triangle in points #@p1 #@p2 #@p3 "
	end

	def inspect
		to_s
	end

	def eql?(other)
		self.==(other)
	end

	def hash
		[ @p1, @p2, @p3 ].hash
	end
	
end