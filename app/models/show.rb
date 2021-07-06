class Show < ApplicationRecord
  belongs_to :movie
  belongs_to :screen
  has_many :bookings
  validates :date, presence: { message: "can't be blank" }
  validates :time, presence: { message: "can't be blank" }
  validates :amount, presence: { message: "can't be blank" }
end
