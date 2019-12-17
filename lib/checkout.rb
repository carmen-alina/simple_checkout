require_relative 'item'

class Checkout
  attr_reader :total

  def initialize
    @total = 0
    @prices_list = []
  end

  def scan(item)
    @prices_list.push(item.print_price)
    @total = @total + item.price
  end

  def print_list
    @prices_list
    end
  end
