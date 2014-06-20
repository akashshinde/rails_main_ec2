class AddNameToBhk < ActiveRecord::Migration
  def change
    add_column :bhks, :name, :string
  end
end
