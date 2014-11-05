class AddFlatIdToBuyer < ActiveRecord::Migration
  def change
    add_column :buyers, :flat_id, :integer
  end
end
