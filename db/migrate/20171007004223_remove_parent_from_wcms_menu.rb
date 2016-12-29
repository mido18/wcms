class RemoveParentFromWcmsMenu < ActiveRecord::Migration[5.0]
  def change
    remove_column :wcms_menus, :parent_id
  end
end
