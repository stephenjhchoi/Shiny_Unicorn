class AddNameToVenues < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :name, :string
  end
end
