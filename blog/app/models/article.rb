class Article < ActiveRecord::Base
  #this uses teh ImageUploader class to the upload an image for this model
  # we  must have a field called "image" for this model
  mount_uploader :image, ImageUploader

  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }

  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  has_many :votes, dependent: :destroy
  has_many :voting_users, through: :votes, source: :user

  has_many :favourites, dependent: :destroy
  has_many :favourited_users, through: :favourites, source: :user
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes

  def vote_for(user)
    votes.find_by_user_id(user)
  end


    def liked_by?(user)
    # likes will give all the likes objects to the current question record
    # it's the same as calling `self.likes`
    # we filter those likes by a spacific by simply passing the user: user
    # option in the where function
    # the present? will give true if there is at least one element returned
    # and will return false if there are no elements
    likes.where(user: user).present?
  end

  def like_for(user)
    likes.find_by(user: user)
  end

  def favourite_for(user)
    favourites.find_by_user_id(user)
  end


end
