class Idea < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :collaborations, dependent: :destroy
  has_many :collaborating_users, through: :collaborations, source: :user

  has_many :likes, dependent: :destroy
  has_many :users, through: :likes

  validates :title, presence: true,
                   length: { minimum: 5 }

def like_for(user)
  likes.find_by_user_id(user)
end



end
