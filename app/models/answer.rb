class Answer < ApplicationRecord
	validates :key, presence: true, uniqueness: true
	validates :question_group_id, presence: true
	validates :answer_text, presence: true

	belongs_to :question_group, primary_key: :key, foreign_key: :question_group_id
end
