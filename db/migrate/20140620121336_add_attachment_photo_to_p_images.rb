class AddAttachmentPhotoToPImages < ActiveRecord::Migration
  def self.up
    change_table :p_images do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :p_images, :photo
  end
end
