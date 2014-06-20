class CreateBbhks < ActiveRecord::Migration
  def change
    create_table :bbhks do |t|
      t.string :hall_size
      t.string :bed1_size
      t.string :bed2_size
      t.string :kitchen_size
      t.string :floor
      t.boolean :sold_out
      t.string :status

      t.timestamps
    end
  end
end
