class AddColToParty < ActiveRecord::Migration
  def change
    add_column :parties, :table, :integer
  end
end
