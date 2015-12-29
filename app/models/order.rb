class Order < ActiveRecord::Base
  belongs_to :food_item
  belongs_to :party


  def order_status
    time_created = self.created_at
    current_time = Time.now
    time_elapsed = (current_time - time_created)/60
    time_elapsed
  end
    
end
