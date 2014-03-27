class Grouping < ActiveRecord::Base
  belongs_to :user
  belongs_to :groups, :class_name => "Group"

  validates :user_id, uniqueness: {scope: :groups_id, message: "You have already joined this grou."}
end
