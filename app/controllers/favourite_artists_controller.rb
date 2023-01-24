class FavouriteArtistsController < ApplicationController
  
  def index
    @favourite_artists = FavouriteArtist.all
  end
end
