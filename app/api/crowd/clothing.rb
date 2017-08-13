class Crowd::Clothing < Grape::API
  helpers do
    params :find_params do
      optional :urls, type: Array
    end

    def find_answer(url)
      ClothingAnswer.find_by(url: url)
    end
  end

  resource :clothing do
    post '/find' do
      params.fetch(:urls)
            .map { |url| find_answer(url) }
            .reject(&:nil?)
    end
  end
end
