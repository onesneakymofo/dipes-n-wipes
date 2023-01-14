require './cart'
require './item'
cart = Cart.new
wipes = Item.new(name: 'wipes', cost: 400, discount: 3)
dipes = Item.new(name: 'dipes', cost: 700, discount: 2)
cart.add(wipes, 4)
cart.add(dipes, 2)
puts cart.total # 1900