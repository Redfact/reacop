class CreateAnnonces < ActiveRecord::Migration[5.2]
  def change
    create_table :annonces do |t|
      t.string :lieu
      t.integer :capacite
      t.text :description
      t.string :prix

      t.timestamps
    end
  end
end
