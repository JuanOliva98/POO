class Cuenta
	@saldo

	def initialize ( identifier)
		@identifier = identifier
		@saldo = 0
	end
	def deposito( amount )
		@saldo += amount
	end
	def extraccion( amount)
		@saldo -= amount
	end

	def consulta_saldo
		puts "el saldo actual de la #{self.imprimir} es #{@saldo}."
	end

end