class Startup < ActiveRecord::Base
	belongs_to :user
	has_many :playlists, through: :memberships
	def self.search(search)
	  if search
	    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
	  else
	    find(:all)
	  end
	end
end
