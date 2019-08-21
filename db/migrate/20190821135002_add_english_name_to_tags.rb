class AddEnglishNameToTags < ActiveRecord::Migration[6.0]
  def change
    add_column :tags, :name_en, :string
  end
end
