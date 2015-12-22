class Party < ActiveRecord::Base
  has_many :orders
  has_many :food_items, through: :orders

def balance
  balance=0
    self.food_items.each do |food_item|
      balance += food_item.price
    end
  balance
end

end
