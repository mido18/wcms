class AddTranslationToWcmsTextBlock < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        Wcms::TextBlock.create_translation_table! :body => :text
      end

      dir.down do
        Wcms::TextBlock.drop_translation_table!
      end
    end
  end
end
