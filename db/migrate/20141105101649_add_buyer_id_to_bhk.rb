class AddBuyerIdToBhk < ActiveRecord::Migration
  def change
    add_column :bhks, :buyer_id, :reference
  end
end
