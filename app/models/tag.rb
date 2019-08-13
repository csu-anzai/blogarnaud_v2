class Tag < ApplicationRecord
  has_many :articles

  validates :name, presence: true
  validates :icon, presence: true
end
