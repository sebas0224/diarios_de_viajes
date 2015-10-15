class Place < ActiveRecord::Base
	validates :tipo, :citytown_id, presence:true
	belongs_to :citytown
	has_many :stories
end
