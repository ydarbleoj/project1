class Tournament < ActiveRecord::Base

  # belongs_to :creator,
  has_many :players, through: :scores
  has_many :scores
  

end
