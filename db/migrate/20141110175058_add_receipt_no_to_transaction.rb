class AddReceiptNoToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :receipt_no, :integer
  end
end
