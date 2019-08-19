class AddEnglishTitleToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :title_en, :string
  end
end
