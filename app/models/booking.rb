class Booking < ApplicationRecord
  belongs_to :show
  belongs_to :user
  validates :seat_number, presence: { message: "can,t empty" }
end
