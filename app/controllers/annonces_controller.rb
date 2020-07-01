require 'colorize'
class AnnoncesController < ApplicationController
    def index
        puts params
        @AlaUne = Annonce.AlaUne
        @annonces = Annonce.all
        @sort = params[:sort]
        @secondSort = params[:precSort]
        search = params[:search]
        if(search)then
            @annonces = Annonce.search(search)
        elsif (@sort != nil && @secondSort!=nil)
            @annonces = Annonce.sortby(Annonce.all,@sort)
            puts "second sorting".colorize(:green)     
            @annonces = Annonce.sortby(@annonces,@secondSort)
                
        elsif (@sort != nil)
            @annonces = Annonce.sortby(Annonce.all,@sort)
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
