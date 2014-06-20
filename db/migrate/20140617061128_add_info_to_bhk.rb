class AddInfoToBhk < ActiveRecord::Migration
  def change
    add_column :bhks, :info, :string
  end
end
