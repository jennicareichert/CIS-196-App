class Group < ActiveRecord::Base

has_many :users, :through => :groupings
has_many :groupings, :dependent => :destroy, :conditions => 'accepted IS NOT NULL'
	
has_many :posts, :dependent => :destroy

#validations
validates :group_name, presence: true
validates :group_name, length: {minimum: 3}
validates :group_name, uniqueness: true

end
