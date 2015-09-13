class Story < ActiveRecord::Base
	validates :content, :tittle, :date, :id_user, :id_country, presence: true
	
	has_many :comments
	
end
