class Entreprise < ApplicationRecord
  belongs_to :tag

  validates :name, presence: true
  validates :value_proposition_fr, presence: true
  validates :value_proposition_en, presence: true
  validates :content_fr, presence: true
  validates :content_en, presence: true
  validates :photo, presence: true
  validates :logo, presence: true
  validates :website, presence: true

  mount_uploader :photo, PhotoUploader
  mount_uploader :logo, PhotoUploader

  has_rich_text :value_proposition_fr
  has_rich_text :value_proposition_en
  has_rich_text :content_fr
  has_rich_text :content_en

  include PgSearch::Model
  pg_search_scope :global_search,
                  against: [:name, :value_proposition_fr, :value_proposition_en, :content_fr, :content_en, :website],
                  associated_against: {
                    tag: [:name_fr, :name_en]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
  multisearchable against: [:name, :value_proposition_fr, :value_proposition_en, :content_fr, :content_en, :website]
end
