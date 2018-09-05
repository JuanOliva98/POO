class CajaAhorro < Cuenta
	def initialize( identifier )
		super( identifier )
	end

	def deposito( amount )
		super( amount )
	end

	def extraccion( amount )
		raise 'Error, saldo insuficiente.' if amount > @saldo
		super( amount )
	end

	def imprimir
		"Caja de ahorro con identificador #{@identifier} "
	end

end
