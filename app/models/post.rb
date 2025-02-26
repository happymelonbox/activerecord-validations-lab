class Post < ActiveRecord::Base
    include ActiveModel::Validations
    validates :title, presence: true
    validates :content, length: { minimum: 10 }
    validates :summary, length: { maximum: 10 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validates_with ClickbaitValidator
end
