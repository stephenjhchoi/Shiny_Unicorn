class Venue < ApplicationRecord
  has_many :favorites
  has_attachment :photo

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  CATEGORIES = ["Bar", "Restaurant", "Coffee Shop"]
  MOODS = ['fun', 'chill', 'seductive', 'adventurous', 'classy',]
  AREAS = ["Chelsea", "Shoreditch", "Knightsbridge", "Mayfair", "Marylebone", "Hampstead", "Kensington"]
  validates :area, presence: true

  private
  def area_in_london
    self.areas + ', London, UK'
  end
end
