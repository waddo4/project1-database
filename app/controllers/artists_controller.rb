class ArtistsController < ApplicationController
    def index
        if params[:search].present?
            @artists = Artist.where'name ILIKE ?', '%' + params[:search] + '%'
        else
            @artists = Artist.all
        end
    end
    
    def new
        @artist = Artist.new 
    end

    def create
        artist = Artist.create artist_params
        redirect_to artist
    end

    def edit
        @artist = Artist.find params[:id]
    end

    def update
        artist = Artist.find params[:id]
        artist.update artist_params
        redirect_to artist
    end

    def show
        @artist = Artist.find params[:id]
    end

    def destroy
        artist = Artist.find params[:id]
        artist.destroy
        redirect_to artists_path
    end

    def add_favourite
        if @current_user.present? 
            FavouriteArtist.create(:artist_id => params[:id], :user_id => @current_user.id)
            redirect_to "/favourites"
            @fav = true
        end
    end
    
    def remove_favourite
        FavouriteArtist.destroy(:artist_id => params[:id], :user_id => @current_user.id)
        @fav = false
    end

    private
    def artist_params 
        params.require(:artist).permit(:name, :start, :end, :members, :country, :image, :info)
    end
end