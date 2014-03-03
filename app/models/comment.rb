class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

#validations
validates :body, presence: true
validates :body, length: {minimum: 5}

end
