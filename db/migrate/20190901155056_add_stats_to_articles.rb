class AddStatsToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :linkedin_shares, :integer
    add_column :articles, :viadeo_shares, :integer
    add_column :articles, :twitter_shares, :integer
    add_column :articles, :facebook_shares, :integer
    add_column :articles, :mail_shares, :integer
  end
end
