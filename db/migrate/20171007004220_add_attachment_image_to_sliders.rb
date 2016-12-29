class AddAttachmentImageToSliders < ActiveRecord::Migration
  def self.up
    change_table :wcms_sliders do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :wcms_sliders, :image
  end
end
