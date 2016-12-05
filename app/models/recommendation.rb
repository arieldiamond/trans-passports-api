class Recommendation < ApplicationRecord
	validates :key, presence: true, uniqueness: true
	validates :rec_text, presence: true
end
