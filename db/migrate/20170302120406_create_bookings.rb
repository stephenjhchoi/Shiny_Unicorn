class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.references :user, foreign_key: true
      t.references :spot, foreign_key: true

      t.timestamps
    end
  end
end
