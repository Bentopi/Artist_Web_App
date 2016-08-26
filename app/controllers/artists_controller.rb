class ArtistsController < ApplicationController

def list
  unless params[:artist_name].empty?
    @artists = RSpotify::Artist.search(params[:artist_name])
  else
    redirect_to root_path
  end
end


def show
  @artist = RSpotify::Artist.find(params[:id])
end

def album_show
end

end
