class AddFlatToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :flat, :reference
  end
end
