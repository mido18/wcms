class CreateWcmsTextBlocks < ActiveRecord::Migration
  def change
    create_table :wcms_text_blocks do |t|
      t.string :name
      t.text :body

      t.timestamps null: false
    end
  end
end
