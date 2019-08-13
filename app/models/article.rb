class Article < ApplicationRecord
  belongs_to :tag

  validates :title, presence: true
  validates :content_fr, presence: true
  validates :date, presence: true
  validates :photo, presence: true

  mount_uploader :photo, PhotoUploader
end
