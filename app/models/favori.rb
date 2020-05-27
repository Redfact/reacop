class Favori < ApplicationRecord
    validates_uniqueness_of :user_id, :scope => :annonce_id , message: "Annonce déja dans les favoris !"
end
