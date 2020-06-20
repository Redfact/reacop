class AnnoncesController < ApplicationController
  def index
     @annonces = Annonce.all
  end

  def show 
    @annonce = Annonce.find(params[:id])
    @place_libre= @annonce.place_libre
    @place_occupe= @annonce.capacite - @place_libre
    @partiel = @annonce.contrat_partiel
  end

  
end
