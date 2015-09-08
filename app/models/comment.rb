class Comment < ActiveRecord::Base
	validates :content, :id_story, presence: true
	belongs_to :story
end
