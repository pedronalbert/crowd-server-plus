class Crowd::API < Grape::API
  format :json

  mount self::Clothing
end
