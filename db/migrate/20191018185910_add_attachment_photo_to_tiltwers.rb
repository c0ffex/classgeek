class AddAttachmentPhotoToTiltwers < ActiveRecord::Migration[6.0]
  def self.up
    change_table :tiltwers do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :tiltwers, :photo
  end
end
