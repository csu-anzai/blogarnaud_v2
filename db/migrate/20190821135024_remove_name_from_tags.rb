class RemoveNameFromTags < ActiveRecord::Migration[6.0]
  def change

    remove_column :tags, :name, :string
  end
end
