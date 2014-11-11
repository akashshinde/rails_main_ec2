class AddFlatToBuyer < ActiveRecord::Migration
  def change
    add_column :buyers, :flat, :reference
  end
end
