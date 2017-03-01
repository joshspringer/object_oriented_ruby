item1 = {
  :name => "kayak",
  :color => "red",
  :price => 1500,
  :inventory => 9
}

item2 = {
  :name => "bike",
  :color => "black",
  :price => 250,
  :inventory => 15
}

item3 = {
  name: "basketball",
  color: "orange",
  price: 30,
  inventory: 30  
}


p "Item 1 is a #{item1[:color]} #{item1[:name]} that costs #{item1[:price]} dollars.  We have #{item1[:inventory]} of them in stock."

p "Item 2 is a " + item2[:color] + " " + item2[:name] + " that costs " + item2[:price].to_s + " dollars.  We have " + item2[:inventory].to_s + " of them in stock."


