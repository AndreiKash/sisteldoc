class User < ApplicationRecord
	before_create :create_remember_token

  belongs_to :subdivision, optional: true
	
  validates :name,  presence: true, length: { maximum: 50 }
	validates :login, presence: true, length: { maximum: 20 }, uniqueness: { case_sensitive: false}
  validates :subdivision_id, presence: true

	has_secure_password
	validates :password, length: { minimum: 6 }


	def User.new_remember_token
    	SecureRandom.urlsafe_base64
  	end

  	def User.encrypt(token)
    	Digest::SHA1.hexdigest(token.to_s)
  	end

  	private

    	def create_remember_token
      		self.remember_token = User.encrypt(User.new_remember_token)
    	end
end
