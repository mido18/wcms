class CreateWcmsMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :wcms_menus do |t|
      t.string :title
      t.string :link
      t.integer :order
      t.references :parent , index: true

      t.timestamps
    end
  end
end
