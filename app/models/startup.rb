class Startup < ActiveRecord::Base
	belongs_to :user
	has_many :playlists
end
