class CreateVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :venues do |t|
      t.string :address
      t.string :category
      t.string :mood
      t.text :description
      t.integer :price
      t.integer :light_level
      t.integer :noise_level
      t.integer :couch_comfort
      t.integer :staff_level
      t.integer :unicorn_score
      t.integer :distance_from_bed

      t.timestamps
    end
  end
end
