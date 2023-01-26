require 'HTTParty'

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

        # your_api_key = 'AIzaSyCMn7qGc3GaUwDY-TTMC44hgkmAgxdR0q0'
      your_api_key = 'AIzaSyCMn7qGc3GaUwDY-TTMC44hgkmAgxdR0q0'
      search = "#{@song.title} music video"
      api_video_results = "https://www.googleapis.com/youtube/v3/search?key=#{your_api_key}&q=#{search}&type=video&part=snippet"
      video_results = HTTParty.get api_video_results
      if !video_results.to_s.include?("error")
      @video = "https://www.youtube.com/embed/" + video_results["items"][0]["id"]["videoId"]
      else
        @video = video_results
      end
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
            @fav = true
        end
    end
    
    def remove_favourite
        if @current_user.present? 
            favourite_song = FavouriteSong.where(song_id: params[:id], user_id: @current_user.id)
            @current_user.favourite_songs.delete(favourite_song)
            redirect_to songs_path
        end
    end

    private
    def song_params 
        params.require(:song).permit(:title, :artist_id, :album_id, :length, :video, :genre_ids => [])
    end
end


# <div class="content">
#     <% unless @video.nil?%>
#         <% if @video.include? 'youtube.com/embed'%>
#             <iframe width="420" height="315"src="<%= @video %>"></iframe>
#         <% else%>
#             <p><%= @video %></p>
#         <% end%>
#     <% end%>
# </div>