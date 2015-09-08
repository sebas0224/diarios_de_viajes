class Citytown < ActiveRecord::Base
	validates :state, :id_country, presence: true
	belongs_to :country
	has_many :places
end
