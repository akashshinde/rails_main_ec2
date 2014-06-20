class AddDetailsToPImage < ActiveRecord::Migration
  def change
    add_column :p_images, :details, :text
  end
end
