class Item
  attr_reader :name, :cost, :discount
  
  def initialize(name:, cost:, discount:)
    @name = name
    @cost = cost
    @discount = discount
  end
end