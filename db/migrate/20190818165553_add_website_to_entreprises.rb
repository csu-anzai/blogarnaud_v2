class AddWebsiteToEntreprises < ActiveRecord::Migration[6.0]
  def change
    add_column :entreprises, :website, :string
  end
end
