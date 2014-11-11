class AddBalanceAmountToFlat < ActiveRecord::Migration
  def change
    add_column :flats, :balance_amount, :integer
  end
end
