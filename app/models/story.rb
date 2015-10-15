class Story < ActiveRecord::Base
	validates :content, :tittle, :date, :user_id, :place_id, presence: true
	belongs_to :user
	belongs_to :place
	has_many :comments
	
end
