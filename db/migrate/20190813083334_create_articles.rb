class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.date :date
      t.string :photo
      t.text :content_fr
      t.text :content_en
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
