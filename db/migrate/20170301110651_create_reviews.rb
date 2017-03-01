class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :hotness_level
      t.date :date
      t.string :time
      t.text :description
      t.integer :staff_level
      t.integer :noise_level
      t.integer :couch_comfort
      t.references :user, foreign_key: true
      t.references :venue, foreign_key: true

      t.timestamps
    end
  end
end
