class AccessStack
	attr reader :popTimes
	attr reader :pushTimes

	def initialize
		@popTimes = 0
		@pushTimes = 0
	end
	
	def addPop
		@popTimes++
	end

	def addPush
		@pushTimes++
	end

end
