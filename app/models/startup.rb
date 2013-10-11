class Startup < ActiveRecord::Base
	has_many :bundles
	has_many :playlists, through: :bundles
	def self.search(search)
	  if search
	    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
	  else
	    find(:all)
	  end
	end
end
