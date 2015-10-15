class Comment < ActiveRecord::Base
	validates :content, :story_id, presence: true
	belongs_to :story
end
