class QuestionGroup < ApplicationRecord
	validates :key, presence: true, uniqueness: true
	validates :question_text, presence: true

	has_many :answers, primary_key: :key, foreign_key: :question_group_id
end
