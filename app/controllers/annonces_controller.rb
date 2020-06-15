class AnnoncesController < ApplicationController
  def index
     @annonces = Annonce.all
  end

  def show 
    @annonce = Annonce.find(params[:id])
  end

  
end
