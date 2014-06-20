class AddFloorSizeToProject < ActiveRecord::Migration
  def change
    add_column :projects, :floor_size, :string
  end
end
