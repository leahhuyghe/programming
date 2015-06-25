class User < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates :email, presence: true, uniqueness: true, format: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  has_secure_password

  has_many :votes, dependent: :destroy
  has_many :voted_articless, through: :votes, source: :article

end
