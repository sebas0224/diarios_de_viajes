class Place < ActiveRecord::Base
	validates :type, :id_city, presence:true
	belongs_to :citytown
end
