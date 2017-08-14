class HelpUsCategorizeAnswer < ApplicationRecord
  validates :title, uniqueness: true
end
