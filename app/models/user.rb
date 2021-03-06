class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # has_many :groups
  has_many :groupings, :dependent => :destroy, :conditions => 'accepted IS NOT NULL'
  has_many :groups, :through => :groupings

  has_many :posts, :dependent => :destroy
  has_many :comments, :dependent => :destroy

 phoneFormatValidation = /\(\d{3}\) \d{3}-\d{4}/

 #validations
  validates :phone, format: {with:phoneFormatValidation}
   validates :name, presence: true

end
