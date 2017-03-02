class Spot < ApplicationRecord
  belongs_to :venue
  has_attachment :photo
end
