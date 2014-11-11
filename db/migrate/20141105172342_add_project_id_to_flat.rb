class AddProjectIdToFlat < ActiveRecord::Migration
  def change
    add_column :flats, :project_id, :reference
  end
end
