class RemoveDeclawedFromDogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :dogs, :declawed
  end
end
