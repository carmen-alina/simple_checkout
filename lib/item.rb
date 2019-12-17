class Item
attr_reader :price

  def initialize(price)
    @price = price
  end

  def print_price
    return "£" + '%.2f' % @price
  end
end
