class Circle < Ellipse
	
	def initialize(center , radius )
		super( center, Point.new(center, center + radius), Point.new(center + radius, center) )
	end

	def to_s
		"Círculo con centro en #@center y radio #{@radius}"
	end

end

