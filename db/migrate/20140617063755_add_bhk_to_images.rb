class AddBhkToImages < ActiveRecord::Migration
  def change
    add_reference :images, :bhk, index: true
  end
end
