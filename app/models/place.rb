class Place < ActiveRecord::Base
	validates :type,  presence:true
	has_many :stories
end
