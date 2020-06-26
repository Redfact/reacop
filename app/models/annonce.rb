class Annonce < ApplicationRecord
    enum typeBien: { Appartement: 0 , Maison: 1  }
    enum typeVente: { Vente: 0 , Location: 1  }

    has_many :AnInteressants
    has_many :UsersInterested, through: :AnInteressants, source: :user

    has_many :favoris
    has_many :UsersFavoris, through: :favoris , source: :user

    has_many :photos


    def self.locations
        Annonce.all.select{ |an| an.Location? == true}
    end

    def self.ventes
        Annonce.all.select{ |an| an.Vente? == true}
    end
    
    def self.appartements
        Annonce.all.select{ |an| an.Appartement? == true}
    end

    def self.maisons
        Annonce.all.select{ |an| an.Maison? == true}
    end

    def self.priceDesc
        Annonce.all.order(loyer_total: :desc)
    end

    def self.priceAsc
        Annonce.all.order(loyer_total: :asc)
    end

    def self.DateDesc
        Annonce.all.order(created_at: :desc)
    end

    def self.DateAsc
        Annonce.all.order(created_at: :asc)
    end

    def to_s
        "Lieu :#{self.lieu}
        Capacite : #{self.capacite} chambres
        Loyer total : #{self.loyer_total}
        Description : #{self.description}
        #{self.typeBien}
        #{self.typeVente}"
    end
    
    def self.search(input)
        results=[]
        Annonce.all.each do |an|
            if( an.to_s.downcase.delete(' ').include?(input.downcase.delete(' ')))then
                results<<an
            end
        end
        results
    end
end
