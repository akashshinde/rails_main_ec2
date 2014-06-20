class AddFloorToProject < ActiveRecord::Migration
  def change
    add_column :projects, :floor, :string
  end
end
