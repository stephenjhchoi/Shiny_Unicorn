class CreateVenueCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :venue_categories do |t|
      t.references :venue, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
