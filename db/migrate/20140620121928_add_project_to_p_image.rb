class AddProjectToPImage < ActiveRecord::Migration
  def change
    add_reference :p_images, :project, index: true
  end
end
