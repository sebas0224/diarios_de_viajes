class User < ActiveRecord::Base
	validates :name, :password, :mail, :salt, presence: true
	validates_uniqueness_of :email
	validates_lenght_of :password, minimum:8
    validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
	has_many :stories
end
