
require 'digest'

class User < ActiveRecord::Base
	validates :name, :password, :mail, :salt, presence: true
	validates_uniqueness_of :mail
	validates_length_of :password, minimum:8
    validates_format_of :mail, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
	has_many :stories
	has_secure_password

	before_create :set_token
  
  def is_password?(password)
    BCrypt::Password.new(self.password_digest) == password
  end
  def self.login(mail, password)
    user=User.where(mail: mail).first
    if user
      if(BCrypt::Password.new(user.password_digest) == password)
        #user.token
        user
      else
        #puts('que haces')
        false
      end 
    else
      #puts("User doesn't exist")
      false
    end
  end
  def self.generate_new_token(id)
    user=User.find(id)
    if user1
      user.token=SecureRandom.uuid
      user.save
    else
      false
    end
  end
  def self.validate_token(token)
    user = User.where(token: token).first
    user ? user : nil
  end
  private
  def set_token
    self.token = SecureRandom.uuid#Digest::SHA1.hexdigest Time.now.to_s
  end
end


