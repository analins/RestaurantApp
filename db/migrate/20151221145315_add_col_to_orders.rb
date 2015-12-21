class AddColToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :is_complete, :boolean, default: false 
  end
end
