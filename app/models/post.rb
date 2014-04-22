class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :dependent => :destroy

 
 linkFormatValidation =/[http:\/\/]+[a-zA-Z0-9\-\.]+\.(com|org|net|mil|edu|COM|ORG|NET|MIL|EDU)/

 #validations
  validates :title, presence: true
  validates :body, length: {minimum: 5}

  validates :link, :presence => {:message => "Your link has been saved."},
 			:link => true, 
 				:if => Proc.new {|c| not c.link.blank?},
 				:format => { with:linkFormatValidation => false}
 	
 
end
