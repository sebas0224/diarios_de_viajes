class Citytown < ActiveRecord::Base
	validates :state,  presence: true
	
	has_many :places
end
