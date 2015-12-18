class Party < ActiveRecord::Base
  has_many :orders
  has_many :food_items, through: :orders
end
