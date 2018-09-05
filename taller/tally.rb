class Tally < Numeric
	def initialize(string)
		@string = string
	end

	def to_s
		@string
	end

	def to_i
		@string.size
	end

	def <=>(other)
		to_i <=> other.to_i
	end

	def +(other)
		self.class.new('|' * ( to_i + other.to_i ) )
	end

	def -(other)
		self.class.new('|' * (to_i - other.to_i ))
	end

end

tally = Tally.new('||||')
puts tally + 2
puts tally > 2