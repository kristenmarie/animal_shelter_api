class RemoveDeclawedFromCats < ActiveRecord::Migration[5.1]
  def change
    remove_column :cats, :declawed
  end
end
