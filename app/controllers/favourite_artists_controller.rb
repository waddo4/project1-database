class FavouriteArtistsController < ApplicationController
  
  before_filter :find_user


  def index
    @favourite_artists = FavouriteArtist.all
  end
end
