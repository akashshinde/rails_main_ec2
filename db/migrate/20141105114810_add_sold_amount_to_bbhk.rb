class AddSoldAmountToBbhk < ActiveRecord::Migration
  def change
    add_column :bbhks, :sold_amount, :integer
  end
end
