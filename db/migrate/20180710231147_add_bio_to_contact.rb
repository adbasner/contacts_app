class AddBioToContact < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :bio, :string
  end
end
