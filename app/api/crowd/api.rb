class Crowd::API < Grape::API
  format :json

  mount self::Clothing
  mount self::Ebay
  mount self::HelpUsCategorize
end
