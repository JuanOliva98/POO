class Stack
	def initialize
		@stack = Array.new()
		@access = AccessStack.new
	end
	def push(num)
		@stack.append(num)
		@access.addPush
	end
	def peek
		last = @stack.last
	end
	def pop
		raise "Stack is empty " if @stack.size.zero?
		last = @stack.last
		@access.addPop
		@stack = @stack[0...-1]
		last
	end
	def empty?
		@stack.size.zero?
	end
end


stack = Stack.new
stack.push(2)
stack.push(3)
puts stack.peek
puts stack.pop
puts stack.empty?
puts stack.pop
puts stack.empty?
puts stack
