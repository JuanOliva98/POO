require_relative 'Point.rb'
require 'set'

point_set = Set.new
p = Point.new(1,2)
point_set.add(p)
point_set.add(Point.new(3,4))
point_set.add(Point.new(1,2))
puts p
puts point_set
p point_set
