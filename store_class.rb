class Item
  attr_reader :name, :color, :price, :inventory # creates adders for all variables
  attr_writer :price, :inventory                # creates writer method for price variable

  # def initialize(name, color, price, inventory)
  #   @name = name
  #   @color = color
  #   @price = price
  #   @inventory = inventory

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

  # def new_price(new_price)
  #   @price = new_price
  #   return @price
  # end

  # writer method
  # def price=price_input
  #   @price = price_input
  # end
end

class Food < Item
#  attr_reader :shelf_life
  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end
end

# item1 = Item.new("kayak", "red", 1500, 9)
# item2 = Item.new("bike", "black", 205, 18)
# item3 = Item.new("golf club", "green", 340, 3)

# hashes don't have to be in a particular order; if you omit a parameter that variable gets set to nil; if you pass extra parameters, the code does nothing with them
item1 = Item.new({:name => 'kayak', :color => 'red', :price => 1500, :inventory => 9})
item2 = Item.new(name: 'bike', color: 'black', price: 205, inventory: 18)
item3 = Item.new(:name => "golf club", :color => "green", :price => 340, :inventory => 3)
item4 = Food.new(name: 'cheesecake', color: "white", price: 2.50, inventory: 18, shelf_life: 14)

# p item4
# p item4.price_w_tax
puts Food.instance_variables
