class Crowd::HelpUsCategorize < Grape::API
  helpers do
    params :find_params do
      optional :titles, type: Array
    end

    def find_answer(url)
      HelpUsCategorizeAnswer.find_by(url: url)
    end
  end

  resource :help_us_categorize do
    post '/find' do
      params.fetch(:title)
            .map { |title| find_answer(title) }
            .reject(&:nil?)
    end
  end
end
