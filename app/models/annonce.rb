class Annonce < ApplicationRecord
    enum typeBien: { appartement: 0 , maison: 1  }
    enum typeVente: { vente: 0 , location: 1  }

    has_many :AnInteressants
    has_many :UsersInterested, through: :AnInteressants, source: :user

    has_many :favoris
    has_many :UsersFavoris, through: :favoris , source: :user

    has_many :photos

end
