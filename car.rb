module Actualize
  class Car
    include MovementModule
    def initialize(input_options)
      @speed = input_options[:speed]
      @direction = input_options[:direction]
      @fuel = input_options[:fuel]
      @make = input_options[:make]
      @model = input_options[:model]
    end

    def honk_horn
      puts "Beeeeeeep!"
    end
  end
end
