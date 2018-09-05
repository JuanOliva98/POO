class Ellipse < Figuras
	PI = 3,14159

	def initialize( center, point_up, point_right)
		@center = center
		@point_up = point_up
		@point_right = point_right
	end
	def perimeter
		PI
	end
	def area
		PI * (@point_up.y - @center.y) * (@point_right.x - @center.x)
	end
	
	def to_s
		"Elipse con centro en #@center, lado 1: #{(@point_up.y - @center.y)} y lado 2:  #{(@point_right.x - @center.x)} "
	end

	def ==(other)
		#two ellipses are equal if they have the same area
		return nil unless other.is_a? Ellipse

		self.area && other.area
	end

	def eql?(other)
		self.==(other)
	end

	def hash
		[area].hash
	end

	def inspect
		to_s
	end

end