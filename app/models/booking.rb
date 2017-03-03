class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :spot
  has_one :venue, through: :spot
  validates :date, presence: true
end
