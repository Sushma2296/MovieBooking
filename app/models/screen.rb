class Screen < ApplicationRecord
  belongs_to :theatre
  has_many :shows, dependent: :destroy
end
