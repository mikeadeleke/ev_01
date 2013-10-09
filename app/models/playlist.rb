class Playlist < ActiveRecord::Base
	belong_to :user
	has_many :relationships
	has_many :startups, :through => relationships
end
