require_relative 'Point'
require_relative 'Figuras'
require_relative 'Triangle'
require_relative 'Rectangle'
require_relative 'Ellipse'
require_relative 'Circle'


p = Point.new(0,20)
puts p
c = Circle.new(p, 3)
puts c
p2 = Point.new(300, 300)
distance = Point.distance_between( p, p2 )

puts distance

rec = Rectangle.new( p, 10, 20)

per_rec = rec.perimeter
puts rec.perimeter.to_s
puts rec.area

ptr1 = Point.new(0,0)
ptr2 = Point.new(2,0)
ptr3 = Point.new(1,1)
triangle = Triangle.new(ptr1, ptr2, ptr3)

tri_per = triangle.perimeter
puts 'perimetro de triangulo: ' + triangle.perimeter.to_s
puts triangle.area

result = rec.point_in_perimeter(p2)

puts result.to_s