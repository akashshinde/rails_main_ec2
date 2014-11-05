class AddBuyerToHk < ActiveRecord::Migration
  def change
    add_column :hks, :buyer, :reference
  end
end
