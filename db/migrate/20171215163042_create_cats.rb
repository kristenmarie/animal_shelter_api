class CreateCats < ActiveRecord::Migration[5.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.string :gender
      t.boolean :declawed

      t.timestamps
    end
  end
end
