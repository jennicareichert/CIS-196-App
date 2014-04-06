class Group < ActiveRecord::Base

belongs_to :user
has_many :groupings, :dependent => :destroy

#validations
validates :group_name, presence: true
validates :group_name, length: {minimum: 3}
validates :group_name, uniqueness: true

end
