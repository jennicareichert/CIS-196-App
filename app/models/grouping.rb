class Grouping < ActiveRecord::Base
  belongs_to :user
  belongs_to :group

  #validations
  validates :user_id, uniqueness: {scope: :group_id}
end
