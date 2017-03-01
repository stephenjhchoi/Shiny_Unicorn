class RemoveCategoryFromVenues < ActiveRecord::Migration[5.0]
  def change
    remove_column :venues, :category
  end
end
