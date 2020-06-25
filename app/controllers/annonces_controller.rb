require 'colorize'

class AnnoncesController < ApplicationController
    def index
        puts params
        @annonces = Annonce.DateDesc
        sort = params[:sort]
        search = params[:search]
        if( search)then
            @annonces = Annonce.search(search)
        else
            case sort
                when "vente"
                    @annonces = Annonce.ventes
                when  "location"
                    @annonces = Annonce.locations
                when "appart"
                    @annonces = Annonce.appartements
                when  "maison"
                    @annonces = Annonce.maisons
                when  "dateDesc"
                    @annonces = Annonce.DateAsc
                when "dateAsc"
                    @annonces = Annonce.DateDesc
                when  "prixAsc"
                    @annonces = Annonce.priceAsc
                when  "prixDesc"
                    @annonces = Annonce.priceDesc
            end
        end

    end

    def show 
        @annonce = Annonce.find(params[:id])
        @place_libre= @annonce.place_libre
        @place_occupe= @annonce.capacite - @place_libre
        @partiel = @annonce.contrat_partiel
        @photos = @annonce.photos
    end
  
end
