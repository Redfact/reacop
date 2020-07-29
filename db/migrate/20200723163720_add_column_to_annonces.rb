class AddColumnToAnnonces < ActiveRecord::Migration[5.2]
    def change
      add_column :annonces, :AlaUne, :boolean , default: false 
      add_column :annonces, :typeBien, :integer , default: 0
      add_column :annonces, :typeVente, :integer , default: 0
    end
end
