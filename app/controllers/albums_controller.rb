class AlbumsController < ApplicationController
    def index
        if params[:search].present?
            @albums = Album.where'title ILIKE ?', '%' + params[:search] + '%'
        else
            @albums = Album.all
        end
    end

    def new
        @album = Album.new
    end

    def create
        album = Album.create album_params
        redirect_to album
    end

    def edit
        @album = Album.find params[:id]
    end

    def update
        album = Album.find params[:id]
        album.update album_params
        redirect_to album
    end

    def show
        @album = Album.find params[:id]
    end

    def destroy
        album = Album.find params[:id]
        album.destroy
        redirect_to albums_path
    end

    def add_favourite
        if @current_user.present? 
            FavouriteAlbum.create(:album_id => params[:id], :user_id => @current_user.id)
            redirect_to "/favourites"
        end
    end
    
    def remove_favourite
        if @current_user.present? 
            @favourite_album = FavouriteAlbum.where(album_id: params[:id], user_id: @current_user.id)
            @current_user.favourite_albums.delete(@favourite_album)
            redirect_to albums_path
        end
    end

    private
    def album_params
        params.require(:album).permit(:title, :artist_id, :date, :length, :image, :tracks) 
    end
end
