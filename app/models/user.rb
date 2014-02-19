class User < ActiveRecord::Base
  belongs_to :group

  has_many :posts, :dependent => :destroy
  has_many :comments, :dependent => :destroy
end
