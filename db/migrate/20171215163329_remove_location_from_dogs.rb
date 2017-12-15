class RemoveLocationFromDogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :dogs, :location
  end
end
