class BundlesController < ApplicationController
  def create
    @bundle = Bundle.new(startup: Startup.find(params[:startup_id]), playlist: Playlist.find(params[:playlist_id]))
    if @bundle.save
      redirect_to @bundle
    else
      render action: 'new'
    end
  end
  def destroy
    @bundle.find(params[:id])
    playlist = @bundle.playlist
    redirect_to playlist_url playlist
  end
end
