require_relative 'Point.rb'
require_relative 'Figuras.rb'
require_relative 'Ellipse.rb'
require_relative 'Circle.rb'
require_relative 'Rectangle.rb'
require_relative 'Triangle.rb'

my_point = Point.new(1, 2)

p my_point == my_point # true
p my_point == Point.new(1, 2) # true
p my_point != Point.new(3, 4) # true
p my_point != Point.new(1, 2)
p my_point == 'Hola Mundo' # nil

