class AddBioToCats < ActiveRecord::Migration[5.1]
  def change
    add_column :dogs, :bio, :string
  end
end
