class AddFrenchTitleToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :title_fr, :string
  end
end
