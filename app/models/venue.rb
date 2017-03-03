class Venue < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_attachment :photo
  has_many :reviews, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_many :venue_categories, dependent: :destroy
  has_many :categories, through: :venue_categories

  CATEGORIES = ["Bar", "Restaurant", "Cafe"]
  MOODS = ['fun', 'chill', 'seductive', 'adventurous', 'classy',]
  AREAS = ["Chelsea", "Shoreditch", "Soho", "Knightsbridge", "Mayfair", "Marylebone", "Hampstead", "Kensington"]
  validates :area, presence: true

  def favorite?(user)
    user.venues.include? self
  end




  private
  def area_in_london
    self.areas + ', London, UK'
  end
end
