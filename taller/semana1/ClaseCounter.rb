class Counter
	attr_accessor :count

#comentario

	def initialize
		@count = 0
	end

	def increment
		@count += 1
	end

	def decrement
		@count = @count - 1
	end

	def to_s
		@count.to_s
	end

end

c = Counter.new
puts c.count
c.increment
puts c

class MultipleCounter < Counter

	def initialize(i)
		super()
		@num = i
	end

	def increment
		@count += @num
	end

	def decrement
		@count -= @num
	end

end

mult = MultipleCounter.new(5)
puts mult
mult.increment
mult.increment
puts mult