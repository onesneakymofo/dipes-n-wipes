class Cart
  def initialize
    @items = {}
  end

  def add(item, count)
    if @items.key?(item.name)
      @items[item.name][:count] += count
    else
      @items[item.name] = {item: item, count: count}
    end
  end

  def remove(item, count)
    if @items.key?(item.name)
      @items[item.name][:count] -= count
      @items.delete(item.name) if @items[item.name][:count] <= 0
    end
  end

  def total
    total = 0
    @items.each do |key, item|
      item = @items[key][:item]
      count = @items[key][:count]
      if item.respond_to?(:discount)
        total += item.cost * (count - count/item.discount)
      else
        total += item.cost * count
      end
    end
    "$#{total / 100.0}"
  end
end