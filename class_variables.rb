class Polygon
  @@sides = 10
  def self.sides
    @@sides
  end
end

puts Polygon.sides # => 10

class Triangle < Polygon
  @@sides = 3
end

puts Triangle.sides # => 3
puts Polygon.sides # => 3

puts Polygon.class_variables # => @@sides
puts Polygon.instance_variables # => @sides
