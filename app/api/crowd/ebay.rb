class Crowd::Ebay < Grape::API
  helpers do
    params :find_params do
      optional :titles, type: Array
    end

    def find_answer(title)
      EbayAnswer.find_by(title: title)
    end
  end

  resource :ebay do
    post '/find' do
      params.fetch(:titles)
            .map { |title| find_answer(title) }
            .reject(&:nil?)
    end
  end
end
