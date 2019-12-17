require './lib/checkout.rb'

describe 'Checkout' do

  it { is_expected.to respond_to(:scan).with(1).argument }

  describe '.scan' do
    it 'shows a total for all scanned items' do
      my_item = Item.new(40)
      my_checkout = Checkout.new
      my_total = my_checkout.scan(my_item)
      expect { my_checkout.scan(my_item) }.to change{my_checkout.total}.by 40
    end
  end
end
