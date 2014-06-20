class CreateHks < ActiveRecord::Migration
  def change
    create_table :hks do |t|
      t.string :hall_size
      t.string :kitchen_size
      t.string :floor
      t.boolean :sold_out
      t.string :status
      t.belongs_to :project


      t.timestamps
    end
  end
end
