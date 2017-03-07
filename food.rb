require_relative 'item'

module Actualize
  class Food < Item
    attr_reader :shelf_life
    def initialize(input_options)
      super
      @shelf_life = input_options[:shelf_life]
    end
  end
end
