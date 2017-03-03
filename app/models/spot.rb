class Spot < ApplicationRecord
  belongs_to :venue
  has_many :bookings, dependent: :destroy
  has_attachment :photo
end
