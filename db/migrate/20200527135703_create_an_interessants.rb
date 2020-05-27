class CreateAnInteressants < ActiveRecord::Migration[5.2]
  def change
    create_table :an_interessants do |t|
      t.references :user , index:true
      t.references :annonce , index:true 
      t.timestamps
    end
  end
end
