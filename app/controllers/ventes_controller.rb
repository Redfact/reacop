class VentesController < ApplicationController
  def show
    @ventes = Annonce.sortby(Annonce.all,"vente")
    @sort = params[:sort]
    @secondSort = params[:secondSort]
    search = params[:search]

    if(search)then
        @ventes = Annonce.search(search)
    else        
        if (@sort != nil)
            @ventes = Annonce.sortby(@ventes,@sort)
        end

        if (@secondSort != nil)
            @ventes = Annonce.sortby(@ventes,@secondSort)
        end
    end

  end
end
