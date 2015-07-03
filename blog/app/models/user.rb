class User < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates :email, presence: true, uniqueness: true, format: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  has_secure_password

  has_many :votes, dependent: :destroy
  has_many :voted_articless, through: :votes, source: :article

  has_many :likes, dependent: :destroy
  has_many :liked_articles, through: :likes, source: :article

  has_many :favourites, dependent: :destroy
  has_many :favourited_articles, through: :favourites 

end
