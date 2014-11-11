class AddProjectToFlat < ActiveRecord::Migration
  def change
    add_column :flats, :project, :reference
  end
end
