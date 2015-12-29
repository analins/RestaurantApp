class AddOrderCommentsCol < ActiveRecord::Migration
  def change
    add_column :orders, :notes, :text
  end
end
