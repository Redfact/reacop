class AccueilController < ApplicationController
  def show
    @AlaUne = Annonce.AlaUne
  end
end
