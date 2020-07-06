class Annonce < ApplicationRecord
    enum typeBien: { Appartement: 0 , Maison: 1  }
    enum typeVente: { Vente: 0 , Location: 1  }

    has_many :AnInteressants
    has_many :UsersInterested, through: :AnInteressants, source: :user

    has_many :favoris
    has_many :UsersFavoris, through: :favoris , source: :user

    has_many :photos

    validates :lieu , presence: true
    validates :typeBien , presence: true
    validates :typeVente , presence: true
    validates :description , presence:true , length: {minimum:5}
    validates :capacite , presence: true ,  numericality: { only_integer: true , greater_than: 0  }

    def self.AlaUne
        Annonce.all.select{ |an| an.AlaUne == true}
    end

    def self.sortby(annonce,input)
            case input
            when "location"
                annonce.select{ |an| an.Location? == true}
            when "vente"
                annonce.select{ |an| an.Vente? == true}
            when "maison"
                annonce.select{ |an| an.Maison? == true}
            when "appartement"
                annonce.select{ |an| an.Appartement? == true}
            when "prixDesc"
                annonce.sort_by(&:loyer_total).reverse
            when "prixAsc"
                annonce.sort_by(&:loyer_total)
            when "dateDesc"
                annonce.sort_by(&:created_at).reverse
            when "dateAsc"
                annonce.sort_by(&:created_at) 
            end
    end
    
    def to_s
"Lieu :#{self.lieu}
Capacite : #{self.capacite} chambres
Loyer total : #{self.loyer_total} Ar
Description : #{self.description}
Type de bien : #{self.typeBien}
Type de vente : #{self.typeVente}
A la une ? => #{self.AlaUne}"
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
