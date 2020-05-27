class User < ApplicationRecord
    has_many :favoris
    has_many :AnFavoris, through: :favoris, :source => :annonce

    has_many :AnInteressants
    has_many :interessants, through: :AnInteressants , :source => :annonce

    has_many :messages

    # Validates 
    validates :nom, presence: true,length: {in:1..60}
    validates :prenom, presence: true,length: {in:1..60}
        
    

end
