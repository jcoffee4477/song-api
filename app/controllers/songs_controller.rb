class SongsController < ApplicationController

def index
  @songs = Song.all
  render :index
end

def show
  @song = Song.find_by(id: params[:id])

  render :show
end

def create 
  @song = Song.new(
    title: params[:title],
    album: params[:album],
    artist: params[:artist],
    year: params[:year]
  )
  @song.save
  render :show
end

def update
  @song = Song.find_by(id: params[:id])
  @song.title = params[:title]
  @song.album = params[:album]
  @song.artist = params[:artist]
  @song.year = params[:year]
  @song.save
  render :show
end


end
