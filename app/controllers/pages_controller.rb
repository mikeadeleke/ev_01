class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def index
  	@startups = Startup.all
  	@playlists = Playlist.all
  end
end
