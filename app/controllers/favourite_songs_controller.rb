class FavouriteSongsController < ApplicationController

  def index
    @favourite_songs = @current_user.favourite_songs
  end

end
