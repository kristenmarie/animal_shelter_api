class AddNameToDogs < ActiveRecord::Migration[5.1]
  def change
    add_column :dogs, :name, :string
  end
end
