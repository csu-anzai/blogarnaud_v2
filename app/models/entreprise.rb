class Entreprise < ApplicationRecord
  belongs_to :tag

  validates :name, presence: true
  validates :value_proposition_fr, presence: true
  validates :content_fr, presence: true
  validates :photo, presence: true
  validates :logo, presence: true

  has_rich_text :value_proposition_fr
  has_rich_text :value_proposition_en
  has_rich_text :content_fr
  has_rich_text :content_en
end
