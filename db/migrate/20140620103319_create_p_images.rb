class CreatePImages < ActiveRecord::Migration
  def change
    create_table :p_images do |t|

      t.timestamps
    end
  end
end
