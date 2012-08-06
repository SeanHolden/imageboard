class AddAttachmentPhotoToComments < ActiveRecord::Migration
  def self.up
    change_table :comments do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :comments, :photo
  end
end
