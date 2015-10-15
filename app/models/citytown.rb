class Citytown < ActiveRecord::Base
	validates :state, :country_id, presence: true
	belongs_to :country
	has_many :places
end
