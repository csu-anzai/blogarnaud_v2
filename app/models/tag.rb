class Tag < ApplicationRecord
  has_many :articles
  has_many :entreprises

  validates :name, presence: true
  validates :icon, presence: true
end
