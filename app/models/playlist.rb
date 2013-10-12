class Playlist < ActiveRecord::Base
	belongs_to :user
	has_many :bundles
	has_many :startups, through: :bundles
end

