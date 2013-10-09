class Startup < ActiveRecord::Base
	belongs_to :user
	has_many :relationships
	has_many :playlists, :through => :relationships
end
