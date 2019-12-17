require './lib/item.rb'

describe Item do

  describe '.initialize' do
    it 'has a variable price' do
      my_item = Item.new(100)
      expect(my_item.price).to eq(100)
    end

    it 'displays price formatted (£xx.xx)' do
      my_item = Item.new(10)
      printed_price = my_item.print_price
      expect(printed_price).to eq("£10.00")
    end
  end
end
