class Subdivision < ApplicationRecord
	validates :fullname,  presence: true, length: { maximum: 60 }, uniqueness: { case_sensitive: false}
	validates :name, presence: true, length: { maximum: 20 }, uniqueness: { case_sensitive: false}
	validates :leader,  presence: true, length: { maximum: 20 }, uniqueness: { case_sensitive: false}
end
