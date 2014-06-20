class AddDetailsToBhk < ActiveRecord::Migration
  def change
    add_column :bhks, :details, :text
  end
end
