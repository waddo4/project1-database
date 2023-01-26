class SongsController < ApplicationController
    def index
        if params[:search].present?
            @songs = Song.where'title ILIKE ?', '%' + params[:search] + '%'
        else
            @songs = Song.all
        end
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

    def add_favourite
        if @current_user.present? 
            FavouriteSong.create(:song_id => params[:id], :user_id => @current_user.id)
            redirect_to "/favourites"
        end
    end
    
    def remove_favourite
        if @current_user.present? 
        favourite_song = FavouriteSong.where(song_id: params[:id], user_id: @current_user.id)
        # favourite_song = FavouriteSong.find params[:id]
        favourite_song.destroy
        redirect_to "/favourites"
        end
    end

    private
    def song_params 
        params.require(:song).permit(:title, :artist_id, :album_id, :length, :video, :genre_ids => [])
    end
end