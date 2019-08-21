class AddFrenchNameToTags < ActiveRecord::Migration[6.0]
  def change
    add_column :tags, :name_fr, :string
  end
end
