class Bundle < ActiveRecord::Base
	belongs_to :startup
	belongs_to :playlist

	validates :startup, uniqueness: { scope: :playlist }
end
