class Playlist < ActiveRecord::Base
	belongs_to :user
	has_many :relationships
	has_many :startups, :through => :relationships
end
