class ChangeParentColumnToAllowNil < ActiveRecord::Migration[5.0]
  def change
    change_column_null(:wcms_menus, :parent_id, true)
  end
end
