class Review < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  validates :hotness_level, presence: true
end
