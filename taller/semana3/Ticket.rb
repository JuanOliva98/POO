require 'set'

class Ticket
	@id

	def initialize( id )
		@id = id
		@items = SortedSet.new

		# @items = [] # array vacio
	end

	def add( item )
		raise "el item no es un item" unless item.is_a? Item
		@items.add(item) # no hace falta verificar igualdad

		# 
		# @items.push(item) unless @items.include?(item)
	end

	def total
		@items.map{|i| i.total }.reduce(:+)

		# sum = 0
		# @items.each{|i| sum += i.total }
		# sum
	end

	def to_s
		s = "Ticket #{@id} \n"
		@items.each{ |the_item| s+= the_item.to_s + "\t" + the_item.total.to_s + "\n" }
		s += "total: $#{total}"
	end

	protected def id
		@id
	end

	def ==(other)
		return false unless other.is_a? Ticket
		@id == other.id
	end

end
