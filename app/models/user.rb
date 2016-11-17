class User < ApplicationRecord
	validates :name,  presence: true, length: { maximum: 50 }
	validates :login, presence: true, length: { maximum: 20 }, uniqueness: { case_sensitive: false}


	has_secure_password
	validates :password, length: { minimum: 6 }
end
