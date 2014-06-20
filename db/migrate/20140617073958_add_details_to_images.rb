class AddDetailsToImages < ActiveRecord::Migration
  def change
    add_column :images, :details, :text
  end
end
