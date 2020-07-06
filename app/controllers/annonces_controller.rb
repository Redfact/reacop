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
        @photos = @annonce.photos
    end

    def new
        @annonce= Annonce.new(place_libre:0)
        @error = params[:error]
        if( @error != nil)
            @annonce=Annonce.new(annonce_params)
        end
    end

    def create
        puts "Controller Annonce create",annonce_params
        @annonce = Annonce.new(annonce_params)
        puts @annonce
        @annonce.save
        if( @annonce.save)
            redirect_to(root_path(:create_annonce=>true))
        else
            @error = @annonce.errors.full_messages
            redirect_to new_annonce_path(:error=>@error ,:annonce => annonce_params)
        end
    end

    def valide_params
    end

    def annonce_params
        params.require(:annonce).permit(:loyer_total,:description,:lieu,:capacite,:typeVente,:typeBien,:AlaUne)
    end
  
end
