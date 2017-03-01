class Vehicle
  def initialize(input_options)
    @speed = input_options[:speed]
    @direction = input_options[:direction]
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  def initialize(input_options)
    super
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize(input_options)
    super
    @gears = input_options[:gears]
    @type = input_options[:type]
    @weight = input_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car1 = Car.new(speed: 0, direction: "north", fuel: "unleaded", make:"Honda", model: "Accord")
bike1 = Bike.new(speed: 10, direction: "east", gears: 18, type: "road bike", weight: 12)

p car1
p bike1

# car1.ring_bell
