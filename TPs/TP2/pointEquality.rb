require_relative 'Point.rb'


my_point = Point.new(1, 2)

puts my_point == my_point # true
puts my_point == Point.new(1, 2) # true
puts my_point != Point.new(3, 4) # true
puts my_point == 'Hola Mundo' # nil