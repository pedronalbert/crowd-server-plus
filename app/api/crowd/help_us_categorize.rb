class Crowd::HelpUsCategorize < Grape::API
  helpers do
    params :find_params do
      optional :titles, type: Array
    end

    def find_answer(title)
      HelpUsCategorizeAnswer.find_by(title: title)
    end
  end

  resource 'help-us-categorize' do
    post '/find' do
      params.fetch(:titles)
            .map { |title| find_answer(title) }
            .reject(&:nil?)
    end
  end
end
