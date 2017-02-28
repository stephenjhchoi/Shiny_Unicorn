class Venue < ApplicationRecord
  has_many :favorites
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  CATEGORIES = ["Bar", ""]
  NEIGHBORHOOD = ["Chelsea", "Shoreditch", "Knightsbridge", "Mayfair", "Marylebone", "Hampstead"]
  validates :area, presence: true

  private
  def area_in_london
    self.neighborhood + ', London, UK'
  end
end
