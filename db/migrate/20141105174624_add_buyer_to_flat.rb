class AddBuyerToFlat < ActiveRecord::Migration
  def change
    add_column :flats, :buyer_id, :reference
  end
end
