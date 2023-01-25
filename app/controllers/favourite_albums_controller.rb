class FavouriteAlbumsController < ApplicationController
  
  def index
    @favourite_albums = @current_user.favourite_albums
  end

end
