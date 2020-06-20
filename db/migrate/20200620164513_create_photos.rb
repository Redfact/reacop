class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string  :url 
      t.belongs_to :annonce, index:true 
      t.timestamp
    end
  end
end
