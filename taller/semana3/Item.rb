class Item
	attr_reader :description
	attr_reader :quantity
	attr_reader :unit_price
	attr_reader :total

	@description
	@quantity
	@unit_price

	def initialize(des, quantity, price)
		@description = des
		@quantity = quantity
		@unit_price = price
	end

	def total
		@quantity * @unit_price
	end

	def to_s
		"#{@description}\t #{@quantity}"
	end

	def ==(other)
		return false unless (other.is_a? Item) && @description == other.description && @quantity == other.quantity && @unit_price == other.unit_price

		true
	end

	def eql?(other)
		self.==(other)
	end

	def hash
		[@description, @quantity, @unit_price].hash
	end

	def <=>(other)
		total <=> other.total # Orden Ascendente según el precio total el ítem
	end


end	