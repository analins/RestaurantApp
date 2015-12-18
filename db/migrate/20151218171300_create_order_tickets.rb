class CreateOrderTickets < ActiveRecord::Migration
  def change
    create_table :order_tickets do |t|
  

      t.timestamps null: false
    end
  end
end
