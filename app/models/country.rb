class Country < ActiveRecord::Base
	validates :continent, presence: true
	has_many :citytowns
end
