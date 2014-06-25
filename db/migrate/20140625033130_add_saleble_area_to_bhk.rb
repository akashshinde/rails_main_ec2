class AddSalebleAreaToBhk < ActiveRecord::Migration
  def change
    add_column :bhks, :salable_area, :string
  end
end
