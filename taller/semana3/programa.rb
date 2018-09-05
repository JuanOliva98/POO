require_relative 'Item'
require_relative 'Ticket'

my_ticket = Ticket.new (2000)
my_ticket.add(Item.new('Bayaspirina', 1, 1010.10 )) # sería mejor si solo se pasara la descripcion, cantidad y precio del item, y que la clase quedara oculta.
my_ticket.add(Item.new('coca-cola', 3, 35.50 ))
my_ticket.add(Item.new('Cuaderno', 2, 510.10 ))
my_ticket.add(Item.new('Cuaderno', 2, 510.10 ))
puts my_ticket

ticket2 = Ticket.new(2050)
ticket3 = Ticket.new(2000)


puts Item.new('Cuaderno', 2, 510.10 ) == Item.new('Cuaderno', 2, 510.10 )
puts Item.new('Cuaderno', 2, 510.10 ) == Item.new('Cuaderno', 4, 510.10 )
puts Item.new('Cuaderno', 2, 510.10 ) == "item"

# my_ticket.add("item")
# puts my_ticket==ticket2
# puts my_ticket==ticket3
# puts my_ticket=="ticket"

