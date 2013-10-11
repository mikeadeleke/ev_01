class Bundle < ActiveRecord::Base
	belongs_to :startup
	belongs_to :playlist
end
