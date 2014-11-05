class AddSoldAmountToBhk < ActiveRecord::Migration
  def change
    add_column :bhks, :sold_amount, :integer
  end
end
