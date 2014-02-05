class Player < ActiveRecord::Base

  has_secure_password

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  validates :name, presence: true, length: { maximum: 50 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    # format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true



  has_many :sent_tournaments, class_name: "Tournament", foreign_key: "sender_id", 
            inverse_of: "receiver_id"
  has_many :received_tournaments, class_name: "Tournament", 
            foreign_key: "receiver_id", inverse_of: "receiver"
   # has_many :tournaments, dependent: :destroy # tournaments has yet to be made 
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :reverse_relationships, foreign_key: "followed_id", 
                                                 class_name: "Relationships", 
                                                 # this allows me to use reverse_rel w/out creating a class
                                                 dependent: :destroy
  has_many :followers, through: :reverse_relationships
  # here we're adding Player / followed_users - which may need to be players - association 
  has_many :followed_users, through: :relationships
  # to create a following relationship we need to introduce follow! utility method so i can 
  #  write player.follow!(other_player)

   # below here is the relationship between players and followers 

  def following?(other_player)
    relationships.find_by(followed_id: other_player.id)
  end 

  def follow!(other_player)
    relationships.create!(followed_id: other_player.id)
  end

  def unfollow!(other_player)
    relationships.find_by(followed_id: other_player.id).destroy
  end

  
  private

  def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
  end

end
