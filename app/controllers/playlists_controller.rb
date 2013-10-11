class PlaylistsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_playlist, only: [:show, :edit, :update, :destroy]


  def index
    @playlists = Playlist.all
  end

  def show

  end

  def new
    @playlist = Playlist.new
  end

  def edit
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.save
      redirect_to @playlist, notice: 'You just created a playlist on Edopter! Look at you!'
    else
      render action: 'new'
    end
  end

  def update
    if @playlist.update(playlist_params)
      redirect_to @playlist, notice: 'You just updated your playlist!'
    else
      render action: 'edit'
    end
  end

  def destroy
    @playlist.destroy
    redirect_to playlists_url
  end

  def add_to
    begin
      @playlist << Bundle.create!(startup: Startup.find(params[:id]))
    rescue
      redirect_to @playlist
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist
      @playlist = Playlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playlist_params
      params.require(:playlist).permit(:name)
    end
end
