class User < ApplicationRecord
	validates :surname, presence: true, length: { maximum: 50 }
	validates :name, presence: true, length: { maximum: 50 }
	validates :patronymic, presence: true, length: { maximum: 50 }
	validates :login, presence: true, length: { maximum: 50 }, uniqueness: true
	validates :leader, presence: true
	validates :rank, presence: true, length: { maximum: 50 }
	validates :subdivision, presence: true, length: { maximum: 50 }
	validates :write, presence: true
	validates :read, presence: true

	has_secure_password
  	validates :password, length: { minimum: 5 }
end
