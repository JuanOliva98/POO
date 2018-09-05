class Figuras
	def initialize
		not_overriden
	end
	def area
		not_overriden
	end
	def perimeter
		not_overriden
	end

	protected def not_overriden
		raise 'This method should be overriden.'
	end

	def point_in_perimeter(p)
		self.point_belongs_per(p)
	end

end