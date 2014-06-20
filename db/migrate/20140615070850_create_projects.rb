class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :address
      t.integer :no_of_flats
      t.text :parking_area

      t.timestamps
    end
  end
end
