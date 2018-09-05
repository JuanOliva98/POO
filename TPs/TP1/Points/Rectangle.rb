class Rectangle < Figuras
	def initialize(top_left_p, base, height )
		@top_left_p = top_left_p
		@base = base
		@height = height
	end

	def perimeter
		@base * 2 + @height * 2
	end

	def area
		@height * @base
	end

	def point_belongs_per( p )
		return false unless (p.x = @top_left_p.x) || (p.x = @top_left_p.x + @base ) && (p.y >=  (@top_left_p.y-@height) && p.y <=  @top_left_p.y)
		return false unless (p.y = @top_left_p.y) || (p.y = @top_left_p.y - @height ) && (p.x >=  @top_left_p.x && p.x <=  @top_left_p.x + @base)
		false
	end


end