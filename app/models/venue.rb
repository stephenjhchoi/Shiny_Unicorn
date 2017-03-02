class Venue < ApplicationRecord
  has_many :favorites
  has_attachment :photo
  has_many :reviews
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_many :venue_categories
  has_many :categories, through: :venue_categories
  has_many :spots

  CATEGORIES = ["Bar", "Restaurant", "Cafe"]
  MOODS = ['fun', 'chill', 'seductive', 'adventurous', 'classy',]
  AREAS = ["Chelsea", "Shoreditch", "Knightsbridge", "Mayfair", "Marylebone", "Hampstead", "Kensington"]
  validates :area, presence: true

  private
  def area_in_london
    self.areas + ', London, UK'
  end
end
