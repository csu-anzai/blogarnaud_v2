class Reader < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :message, presence: true

  has_rich_text :message
end
