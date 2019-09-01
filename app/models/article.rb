class Article < ApplicationRecord
  after_initialize :set_default, unless: :persisted?

  belongs_to :tag

  validates :title_fr, presence: true
  validates :title_en, presence: true
  validates :content_fr, presence: true
  validates :content_en, presence: true
  validates :date, presence: true
  validates :photo, presence: true

  mount_uploader :photo, PhotoUploader

  has_rich_text :content_fr
  has_rich_text :content_en

  include PgSearch::Model
  pg_search_scope :global_search,
                  against: [:title_fr, :title_en, :content_fr, :content_en],
                  associated_against: {
                    tag: [:name_fr, :name_en]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
  multisearchable against: [:title_fr, :title_en, :content_fr, :content_en]

  private

  def set_default
    self.linkedin_shares = 0 if self.linkedin_shares.nil?
    self.viadeo_shares = 0 if self.viadeo_shares.nil?
    self.twitter_shares = 0 if self.twitter_shares.nil?
    self.facebook_shares = 0 if self.facebook_shares.nil?
    self.mail_shares = 0 if self.mail_shares.nil?
  end
end
