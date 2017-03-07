require_relative 'movementmodule'
require_relative 'bike'
require_relative 'car'

car1 = Actualize::Car.new(speed: 0, direction: "north", fuel: "unleaded", make:"Honda", model: "Accord")
bike1 = Actualize::Bike.new(speed: 10, direction: "east", gears: 18, type: "road bike", weight: 12)

# p car1
# p bike1

bike1.ring_bell
car1.honk_horn
