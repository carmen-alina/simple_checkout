require './lib/checkout.rb'

describe 'Checkout' do
  it 'responds to scan' do
    expect(Checkout.new).to respond_to(:scan).with(1).argument
  end

  describe '.scan' do
    it 'shows a total for all scanned items' do
      my_checkout = Checkout.new
      my_item = Item.new(40)
      my_total = my_checkout.scan(my_item)
      expect(my_total).to eq(my_item.price)
    end
  end
end
