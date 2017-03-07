module Actualize
  class Item
    attr_reader :name, :color, :price, :inventory # creates adders for all variables
    attr_writer :price, :inventory                # creates writer method for price variable

    def initialize(input_options) #input_options is a hash
      @name = input_options[:name]
      @color = input_options[:color]
      @price = input_options[:price]
      @inventory = input_options[:inventory]
    end

    def print_info
      p "This item is a #{@color} #{@name} that costs #{@price} dollars.  We have #{@inventory} in stock."
    end

    def price_w_tax
      return @price * 1.07
    end
  end
end
