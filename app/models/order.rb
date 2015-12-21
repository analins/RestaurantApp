class Order < ActiveRecord::Base
  belongs_to :food_item
  belongs_to :party
end
