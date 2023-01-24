class FavouriteAlbumsController < ApplicationController
  
  before_filter :find_user

  def index
    @favourite_albums = FavouriteAlbum.all
  end

  def new
  end
end
