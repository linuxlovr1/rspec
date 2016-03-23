require 'rails_helper'

RSpec.describe Address, type: :model do 
  describe 'attributes' do 
  it {should respond_to :city}
  it {should respond_to :state}
  it {should respond_to :zip} 
  it {should respond_to :street}
  it {should belong_to :person}
  end

  describe 'info method' do 
    it 'returns info' do 
      info = {city: 'SLC', state: 'UT', zip: 84095, street: 'church and state'}
      @address = Address.create(info)
      expect_info = @address.info
      expect(address_info[:city]).to eq(info[:city])
      expect(address_info[:state]).to eq(info[:state])
      expect(address_info[:zip]).to eq(info[:zip])
      expect(address_info[:street]).to eq(info[:street])
    end
  end
end