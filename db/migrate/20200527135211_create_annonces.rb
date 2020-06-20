class CreateAnnonces < ActiveRecord::Migration[5.2]
  def change
    create_table :annonces do |t|
      t.string :lieu
      t.integer :capacite
      t.integer :loyer_total
      t.integer :loyer_partiel  
      t.integer :place_libre
      t.text :description
      t.boolean :contrat_partiel , default: :false
      t.timestamps
    end
  end
end
