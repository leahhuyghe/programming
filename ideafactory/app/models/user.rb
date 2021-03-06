class User < ActiveRecord::Base

  has_secure_password

  has_many :collaborations, dependent: :destroy
  has_many :collaborated_ideas, through: :collaborations, source: :idea

  has_many :likes, dependent: :destroy
  has_many :liked_ideas, through: :likes, source: :idea

  validates :email, presence: true, uniqueness: true,
            format:  /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

end
