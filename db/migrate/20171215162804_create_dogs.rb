class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.string :breed
      t.integer :age
      t.string :gender
      t.boolean :declawed
      t.string :location
      
      t.timestamps
    end
  end
end
