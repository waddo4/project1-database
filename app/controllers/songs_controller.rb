class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def new
        @song =  Song.new
    end

    def create
        song = Song.create song_params
        redirect_to song
    end

    def edit
        @song = Song.find params[:id]
    end

    def update
        song = Song.find params[:id]
        song.update song_params
        redirect_to song
    end

    def show
        @song = Song.find params[:id]
    end

    def destroy
        song = Song.find params[:id]
        song.destroy
        redirect_to songs_path
    end

    def favourite
        type = params[:type]
        if type == "favourite"
          @current_user.favourite_songs << @song
          redirect_to favourite_songs_path
    
        elsif type == "unfavourite"
          @current_user.favourite_song.delete(@song)
          redirect_to favourite_songs_path
    
        else
          # Type missing, nothing happens
          redirect_to root_path
        end
    end

    private
    def song_params 
        params.require(:song).permit(:title, :artist_id, :album_id, :length, :video, :genre_ids => [])
    end
end