class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.string :hall_size
      t.string :bed1_size
      t.string :kitchen_size
      t.string :floor
      t.boolean :sold_out
      t.string :status
      t.string :info
      t.string :details
      t.string :salable_area
      t.string :bed2_size

      t.timestamps
    end
  end
end
