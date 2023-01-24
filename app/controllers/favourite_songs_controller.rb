class FavouriteSongsController < ApplicationController

  def index
    @favourite_songs = FavouriteSong.all
    # @favourite_songs = @user.favourite_songs
  end

def show
  @favourite_songs = @user.favourite_songs
end

def update
  @favourite_songs = FavouriteSong.find params[:id]
  @favourite_songs.update song_params
  redirect_to favourite_songs
end

def song_params 
  params.require(:song).permit(:song_id)
end

end
