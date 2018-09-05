require_relative 'Figuras.rb'
require_relative 'Ellipse.rb'
require_relative 'Circle.rb'
require_relative 'Rectangle.rb'
require_relative 'Triangle.rb'
require_relative 'Point.rb'
require 'set'

my_figure_set = Set.new
my_figure_set.add(Circle.new(Point.new(10, 20), 15))
my_figure_set.add(Circle.new(Point.new(10, 20), 15))
my_figure_set.add(Ellipse.new(Point.new(30, 18), Point.new(30, 18 + 15 ), Point.new(30 + 15, 18) ))
my_figure_set.add(Ellipse.new(Point.new(30, 18), Point.new(30 , 18 + 10), Point.new(30 + 10, 18)))
my_figure_set.add(Triangle.new(Point.new(10, 20),Point.new(20, 30),Point.new(30, 20)))
my_figure_set.add(Triangle.new(Point.new(10, 20),Point.new(20, 30),Point.new(30, 20)))
my_figure_set.add(Rectangle.new(Point.new(10, 20), 20 , 10 ))
my_figure_set.add(Rectangle.new(Point.new(100, 200), 20 , 10 ))
my_figure_set.add(Rectangle.new(Point.new(10, 20), 21 , 10 ))


puts my_figure_set

