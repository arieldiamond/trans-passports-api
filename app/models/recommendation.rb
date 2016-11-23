class Recommendation < ApplicationRecord
	validates :rec_text, presence: true
end
