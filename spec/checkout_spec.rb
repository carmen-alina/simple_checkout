require './lib/checkout.rb'

describe 'Checkout' do

  it 'responds to scan' do
    expect(Checkout.new).to respond_to(:scan).with(1).argument
  end

end
