class AddAttachmentImageToImageBlocks < ActiveRecord::Migration
  def self.up
    change_table :wcms_image_blocks do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :wcms_image_blocks, :image
  end
end
