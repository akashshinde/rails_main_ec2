class AddBuyerToBhk < ActiveRecord::Migration
  def change
    add_column :bhks, :buyer, :reference
  end
end
