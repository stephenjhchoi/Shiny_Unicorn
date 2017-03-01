class Venue < ApplicationRecord
  has_many :favorites
  has_many :reviews

  CATEGORIES = ["Bar", ""]
  NEIGHBORHOOD = ["Chelsea", "Shoreditch", "Knightsbridge", "Mayfair", "Marylebone", "Hampstead"]
  validates :area, presence: true

  private
  def area_in_london
    self.neighborhood + ', London, UK'
  end
end
