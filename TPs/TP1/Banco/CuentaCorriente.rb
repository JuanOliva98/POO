class CuentaCorriente < Cuenta
	def initialize( identifier )
		super( identifier )
	end
	
	def deposito ( amount )
		super( amount )
	end

	def extraccion ( amount )
		super( amount )
	end

	def imprimir
		"Cuenta corriente con identificador #{@identifier} "
	end
end