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

end