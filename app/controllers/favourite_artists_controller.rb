class FavouriteArtistsController < ApplicationController
  
  def index
    @favourite_artists = @current_user.favourite_artists
  end
  
end
