class AddAreaToVenues < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :area, :string
  end
end
