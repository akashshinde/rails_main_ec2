class AddTotalAmountToFlat < ActiveRecord::Migration
  def change
    add_column :flats, :total_amount, :integer
  end
end
