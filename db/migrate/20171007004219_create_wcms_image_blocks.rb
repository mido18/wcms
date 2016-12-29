class CreateWcmsImageBlocks < ActiveRecord::Migration
  def change
    create_table :wcms_image_blocks do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
