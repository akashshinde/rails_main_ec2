class AddSoldAmountToHk < ActiveRecord::Migration
  def change
    add_column :hks, :sold_amount, :integer
  end
end
