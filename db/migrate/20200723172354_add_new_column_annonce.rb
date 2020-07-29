class AddNewColumnAnnonce < ActiveRecord::Migration[5.2]
  def change
    add_column :annonces, :devise, :integer , default: 0
  end
end
