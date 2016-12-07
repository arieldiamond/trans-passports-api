class QuestionGroupSerializer < ActiveModel::Serializer
  attributes :key,
  					 :question_text,
  					 :subtitle

  has_many :answers
end
