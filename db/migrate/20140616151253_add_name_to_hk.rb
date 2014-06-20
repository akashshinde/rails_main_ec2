class AddNameToHk < ActiveRecord::Migration
  def change
    add_column :hks, :name, :string
  end
end
