require 'colorize'
require 'upload'
include ActionView::Helpers::NumberHelper

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
        @first = @photos.first
        @lasts = @photos.drop(1)
        @prix = number_to_currency(@annonce.loyer_total, unit: "Ar", separator: ",", delimiter: ".", format: "%n %u",precision:0)


    end

    def new
        @annonce= Annonce.new(place_libre:0)
        @error = params[:error]
        if( @error != nil)
            @annonce=Annonce.new(annonce_params)
        end
    end

    def create
        puts "Controller Annonce create".colorize(:green),params
        puts "files".colorize(:cyan)
        fileArray = params[:annonce][:images]

        @annonce = Annonce.new(annonce_params)
        puts @annonce
        @annonce.save

        if( @annonce.save)
            @urls=Array.new

            if( fileArray != nil )
                fileArray.each do |i|
                    puts i.tempfile.path
                    image=Upload.new.image(i.tempfile.path)
                    puts "url:".colorize(:light_green),image.link
                    @urls<<image.link
                end
            end

            #link imgur url image to current annonce
            @urls.each{ |url|
                Photo.create(url: url,annonce_id: @annonce.id)
            }
            redirect_to(root_path(:create_annonce=>true))
        else
            @error = @annonce.errors.full_messages
            redirect_to new_annonce_path(:error=>@error ,:annonce => annonce_params)
        end
    end

    def annonce_params
        params.require(:annonce).permit(:loyer_total,:description,:lieu,:capacite,:typeVente,:typeBien,:AlaUne)
    end
  
end
