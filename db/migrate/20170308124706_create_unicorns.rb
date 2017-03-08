class CreateUnicorns < ActiveRecord::Migration[5.0]
  def change
    create_table :unicorns do |t|
      t.string :name
      t.integer :levelup_point

      t.timestamps
    end
  end
end
