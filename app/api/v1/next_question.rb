module V1
  class NextQuestion < Grape::API
    include V1::Defaults

    resource :next_question do
      desc 'Process answer history and send next question'

      params do
      	requires :current
      	optional :history
      end

      post '/' do
      	next_q = case params[:current]
      		when 'start' then QuestionGroup.find_by(key: 'citizenship')
      		when 'citizenship_no' then Recommendation.find_by(key: 'not_citizen')
      			# more more more
      	end

      	return next_q
      end
    end
  end
end
