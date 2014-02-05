class Relationship < ActiveRecord::Base
  belongs_to :follower, class_name: "Player"
  belongs_to :followed, class_name: "Player"
  validates :follower_id, presence: true 
  validates :followed_id, presence: true 

  
end
