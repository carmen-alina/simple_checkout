require './lib/item.rb'

describe Item do

  describe '.initialize' do
    it 'has a variable price' do
      my_item = Item.new(100)
      expect(my_item.price).to eq(100)
    end
  end
end
