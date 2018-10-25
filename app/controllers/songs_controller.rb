class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @song = Song.new
  end

  def create
    # require 'pry'; binding.pry
    artist = Artist.find(params[:artist_id])
    song = artist.songs.create(song_params)
    redirect_to artist_path(artist)
  end

  private

  def song_params
    params.require(:song).permit(:title, :length, :play_count)
  end

end
