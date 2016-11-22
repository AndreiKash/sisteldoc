class Subdivision < ApplicationRecord
	has_many :users
	validates :fullname,  presence: true
	validates :name, presence: true
end
