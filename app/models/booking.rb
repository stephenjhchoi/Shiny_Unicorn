class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :spot
  belongs_to :venue, through: :spot
end
