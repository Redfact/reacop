class LocationsController < ApplicationController
  def show
    @locations = Annonce.sortby(Annonce.all,"location")
    @sort = params[:sort]
    @secondSort = params[:secondSort]
    search = params[:search]

    if(search)then
        @locations = Annonce.search(search)
    else        
        if (@sort != nil)
            @locations = Annonce.sortby(@locations,@sort)
        end

        if (@secondSort != nil)
            @locations = Annonce.sortby(@locations,@secondSort)
        end
    end

  end
end
