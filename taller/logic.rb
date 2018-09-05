class TrueClass
	def &&(op)
		op
	end

	def \\(op)
		self
	end

	def !
		false
	end
end

class FalseClass
	def &&(op)
		self
	end

	def \\(op)
		op
	end
	
	def !
		true
	end
end

