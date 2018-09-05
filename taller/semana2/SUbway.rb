class Subway_card
	def ride
		raise 'not overriden'
	end
	def initialize
		raise 'not overriden'
	end
end

class SubwayCentral
	attr_reader :ride_cost
	def initialize(ride_cost)
		@ride_cost = ride_cost
	end
	def change_cost(new_cost)
		@ride_cost = new_cost
	end
end

class Rechargable_card < Subway_card
	def ride
		raise 'balance negativo o insuficiente ' until @balance - @sc.ride_cost >= 0
		puts 'RIDE'
		@balance -= @sc.ride_cost
	end
	def initialize( sc )
		@sc = sc
		@balance = 0
	end
	def recharge( amount )
		#validar
		@balance += amount
	end
	def to_s
		'balance actual: ' + balance
	end
end

class Fixed_Card < Subway_card

	def initialize( trips, subway_central )
		@sc = subway_central

		raise 'Cantidad invalida' unless trips.is_a?(Integer) && trips > 0
		@trips = trips
		
	end
	def ride
		raise 'no more rides left' unless @trips > 0
		puts 'RIDE'
		@trips -= 1
	end
	def to_s
	    "Fixed Subway card [ Rides: #{@trips} ]"
		#@trips.to_s + ' rides left'
	end
end


sc = SubwayCentral.new(12.5)
fc = Fixed_Card.new(3, sc)
puts fc
fc.ride
puts fc
fc.ride
fc.ride
puts fc

rc = Rechargable_card.new( sc )
rc.recharge ( 20 )
rc.ride

sc.change_cost( 50 )
rc.ride