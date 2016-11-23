module V1
  class Questions < Grape::API
    include V1::Defaults

    resource :questions do
      desc 'Return questions and associated'

      get '/' do
        QuestionGroup.all
        # questions = Data.where(type: 'question')
        # questions.map{ q => q.answers }
      end

    end
  end
end
