require 'rails_helper'

RSpec.describe Party, type: :model do
  describe "an individual party" do
  before do
    @party= Party.create({count: 3, name: 'ana', table: 1, id: 1} )
    @food_one = FoodItem.create({name: 'salad', description: 'yum' , price: 10.50, id: 1})
    @food_two = FoodItem.create({name: 'pasta', description: 'yummy', price: 19.50, id: 2 })
    Order.create({party_id: 1, food_id: 1, notes: 'first order', is_complete: false})
    Order.create({party_id: 1, food_id: 2, notes: 'second order', is_complete: false})
  end

  describe '#balance' do
    it 'keeps track of the party balance as orders keep being added' do
      actual = @party.balance
      expected = 30.00
      expect(actual).to eq(expected)
    end
  end
  end
end
