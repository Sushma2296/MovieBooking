class Screen < ApplicationRecord
  belongs_to :theatre
  has_many :shows, dependent: :destroy
  validates :name, presence: { message: "Can't be blank " }, uniqueness: true
  validates :seats, presence: true
end
