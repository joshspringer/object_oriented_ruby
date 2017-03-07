module Actualize
  class Bike
    include MovementModule
    def initialize(input_options)
      @speed = input_options[:speed]
      @direction = input_options[:direction]
      @gears = input_options[:gears]
      @type = input_options[:type]
      @weight = input_options[:weight]
    end

    def ring_bell
      puts "Ring ring!"
    end
  end
end
