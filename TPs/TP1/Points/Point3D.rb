class Point3D < Point
	attr_accessor :z

	def initialize(x,y,z)
		super(x, y)
		@z = z
	end

end