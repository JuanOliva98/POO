class Point
	attr_reader :x
	attr_reader :y

	def initialize(x, y)
		@x = x
		@y = y
	end

	def to_s
		"{#{@x},#{@y}}"
	end

	def distance_to(p)
		change_x = ( self.x - p.x )
		change_y = ( self.y - p.y)
		@distance = Math.sqrt( change_x**2 + change_y**2 )
	end
	
	def self.distance_between(a, b)
		change_x = ( b.x - a.x )
		change_y = ( a.y - b.y)
		@distance = Math.sqrt( change_x**2 + change_y**2 )
	end

	def ==(other)
		return nil unless other.instance_of? Point

		return false unless self.x==other.x && self.y==other.y
		true
	end

	def !=(other)
		return false unless self.==(other)
		true
	end


end
