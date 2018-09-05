require_relative 'Figuras.rb'
require_relative 'Ellipse.rb'
require_relative 'Circle.rb'
require_relative 'Rectangle.rb'
require_relative 'Triangle.rb'
require_relative 'Point.rb'
require "set"

my_sorted_figure_set = SortedSet.new
my_sorted_figure_set.add(Rectangle.new(Point.new(10, 20), 10, 10))
my_sorted_figure_set.add(Circle.new(Point.new(10, 20), 1))
my_sorted_figure_set.add(Circle.new(Point.new(10, 20), 3))

p my_sorted_figure_set