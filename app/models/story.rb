class Story < ActiveRecord::Base
	validates :content, :tittle, :date, :id_user, :id_country, presence: true
	belongs_to :user
	belongs_to :country
	has_many :comments
end
