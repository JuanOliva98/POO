class Circle < Ellipse
	
	def initialize(center , radius )
		super( center, Point.new(center.x , center.y + radius), Point.new(center.x + radius, center.y) )
		@radius = radius
	end

	def to_s
		"Circulo con centro en #@center y radio #@radius"
	end

end

