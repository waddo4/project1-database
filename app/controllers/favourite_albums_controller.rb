class FavouriteAlbumsController < ApplicationController
  
  def index
    @favourite_albums = FavouriteAlbum.all
  end

  def new
  end
end
