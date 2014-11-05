class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :name
      t.text :address
      t.integer :mobile_no

      t.timestamps
    end
  end
end
