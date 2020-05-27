class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :contenu
      t.belongs_to :user, index:true

      t.timestamps
    end
  end
end
