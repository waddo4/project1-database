class FavouriteSongsController < ApplicationController
  def index
    @favourite_songs = FavouriteSong.all
  end

  def new
  end
end
