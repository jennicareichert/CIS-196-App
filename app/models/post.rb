class Post < ActiveRecord::Base
  belongs_to :user

  has_many :comments, :dependent => :destroy

  #validations
  validates :title, presence: true
  validates :body, length: {minimum: 5}
end
