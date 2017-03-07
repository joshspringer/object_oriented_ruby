require_relative 'food'
# require_relative 'item'

item1 = Actualize::Item.new({:name => 'kayak', :color => 'red', :price => 1500, :inventory => 9})
item2 = Actualize::Item.new(name: 'bike', color: 'black', price: 205, inventory: 18)
item3 = Actualize::Item.new(:name => "golf club", :color => "green", :price => 340, :inventory => 3)
item4 = Actualize::Food.new(name: 'cheesecake', color: "white", price: 2.50, inventory: 18, shelf_life: 14)

p item4

p item4.price
p item4.price_w_tax

p item4.shelf_life

item4.print_info
