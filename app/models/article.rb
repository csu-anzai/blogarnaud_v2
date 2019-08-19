class Article < ApplicationRecord
  belongs_to :tag

  validates :title_fr, presence: true
  validates :content_fr, presence: true
  validates :date, presence: true
  validates :photo, presence: true

  mount_uploader :photo, PhotoUploader

  has_rich_text :content_fr
  has_rich_text :content_en
end
