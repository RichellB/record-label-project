class ArtistsController < ApplicationController

    before_action :authenticate_user!

    def index
        if user_signed_in?
           @artists = current_user.artists
        end 
        
       end
   
       def new
           @artist = Artist.new
       end
   
       def create
           @artist = Artist.new(artist_params)
           @artist.user = current_user
           if @artist.save
               redirect_to artists_path
           else
               render :new
           end
       end
   
       private
   
       def artist_params
           params.require(:artist).permit(:artist_name, :song_id, song_attributes: [:title])
       end
   end