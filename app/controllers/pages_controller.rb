class PagesController < ApplicationController
  def home
  end

  def premium
  end

  def favourites
    @favourite_songs = @current_user.favourite_songs
    @favourite_artists = @current_user.favourite_artists
    @favourite_albums = @current_user.favourite_albums
  end
end
