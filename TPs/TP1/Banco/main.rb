require_relative 'Cuenta'
require_relative 'CajaAhorro'
require_relative 'CuentaCorriente'

cda = CajaAhorro.new( 'AAAA' )
cc = CuentaCorriente.new( 'BBBB' )

cda.consulta_saldo
cc.consulta_saldo

cda.deposito( 500 )
cc.deposito( 500 )

cda.consulta_saldo
cc.consulta_saldo

cc.extraccion( 750 )


cc.consulta_saldo

cda.extraccion( 750 )


cda.consulta_saldo
