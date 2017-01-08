class AddTranslationToWcmsMenu < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        Wcms::Menu.create_translation_table! :title => :string
      end

      dir.down do
        Wcms::Menu.drop_translation_table!
      end
    end
  end
end
