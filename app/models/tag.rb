class Tag < ApplicationRecord
  has_many :articles
  has_many :entreprises

  validates :name_fr, presence: true
  validates :name_en, presence: true
  validates :icon, presence: true
end
