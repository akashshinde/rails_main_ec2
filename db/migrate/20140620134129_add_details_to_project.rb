class AddDetailsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :details, :text
  end
end
