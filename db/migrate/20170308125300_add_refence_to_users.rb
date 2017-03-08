class AddRefenceToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :unicorn, foreign_key: true
  end
end
