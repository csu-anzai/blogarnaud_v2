class CreateEntreprises < ActiveRecord::Migration[6.0]
  def change
    create_table :entreprises do |t|
      t.string :name
      t.text :value_proposition_fr
      t.text :value_proposition_en
      t.text :content_fr
      t.text :content_en
      t.string :photo
      t.string :logo
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
