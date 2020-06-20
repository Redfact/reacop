class Annonce < ApplicationRecord
    has_many :AnInteressants
    has_many :UsersInterested, through: :AnInteressants, source: :user

    has_many :favoris
    has_many :UsersFavoris, through: :favoris , source: :user

    has_many :photos

end
