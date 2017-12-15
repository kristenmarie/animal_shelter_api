class AddBioToDogs < ActiveRecord::Migration[5.1]
  def change
    add_column :cats, :bio, :string
  end
end
