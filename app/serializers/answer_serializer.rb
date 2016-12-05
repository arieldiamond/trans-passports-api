class AnswerSerializer < ActiveModel::Serializer
  attributes :key,
  					 :question_group_id,
             :answer_text,
             :answer_resource
end
