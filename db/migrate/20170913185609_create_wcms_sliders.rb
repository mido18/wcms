class CreateWcmsSliders < ActiveRecord::Migration
  def change
    create_table :wcms_sliders do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
