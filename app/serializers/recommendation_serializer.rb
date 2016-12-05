class RecommendationSerializer < ActiveModel::Serializer
  attributes :key,
  	:rec_text,
    :rec_resource,
    :required_answer_ids
end
