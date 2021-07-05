class Theatre < ApplicationRecord
  belongs_to :city
  has_many :screens
  has_one_attached :image
  has_many :theatre_admins
  scope :search, ->(name) { where(name: name) }
end
