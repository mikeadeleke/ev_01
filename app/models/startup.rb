class Startup < ActiveRecord::Base
	has_and_belongs_to_many :user
	has_many :playlists
	def self.search(search)
	  if search
	    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
	  else
	    find(:all)
	  end
	end
end
