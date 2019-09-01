class AddStatsToEntreprises < ActiveRecord::Migration[6.0]
  def change
    add_column :entreprises, :linkedin_shares, :integer
    add_column :entreprises, :viadeo_shares, :integer
    add_column :entreprises, :twitter_shares, :integer
    add_column :entreprises, :facebook_shares, :integer
    add_column :entreprises, :mail_shares, :integer
  end
end
