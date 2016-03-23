require 'rails_helper'

RSpec.describe Person, type: :model do
  describe 'attributes' do
    it {should respond_to :name}
    it {should respond_to :age}
    it {should respond_to :race}
    it {should respond_to :hair_color}
    it {should respond_to :eye_color}
    it {should respond_to :alive}
    it {should respond_to :married}
    it {should respond_to :weight}

  end

  describe '#name_and_age'  do
    it 'should return the name and age' do 
      person1 = Person.create(name: 'Someone', age: 25)
      expect(person1.name_and_age).to eq("Someone is age: 25")
    end    
  end


  describe '.self.talk' do 
    it 'should return a string of the person talking' do 
      expect(Person.talk).to eq("Hello, I am human")
    end
  end

  describe '.by_name' do 
    it 'should list names ascending' do 
      person1 = Person.create(name: 'John', age: 25)
      person2 = Person.create(name: 'Mary', age: 30)
      person3 = Person.create(name: 'Bill', age: 40)
      people = Person.by_name
      expect(people.by_name.first).to eq(person3)
      expect(people[1]).to eq(person1)
      expect(people.by_name.last).to eq(person2)
    end
  end


  # describe 'info method' do 
  #   it 'returns info' do 
  #     info = {city: 'SLC', state: 'UT', zip: 84095, street: 'church and state'}
  #     @address = Address.create(info)
  #     expect_info = @person.address.info
  #     expect(address_info[:city]).to eq(info[:city])
  #     expect(address_info[:state]).to eq(info[:state])
  #     expect(address_info[:zip]).to eq(info[:zip])
  #     expect(address_info[:street]).to eq(info[:street])
  #   end
  # end

end