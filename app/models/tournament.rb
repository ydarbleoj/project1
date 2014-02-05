class Tournament < ActiveRecord::Base

  belongs_to :creator, class_name: "Player"
  has_many :receivers, class_name: "Player"
  
end
