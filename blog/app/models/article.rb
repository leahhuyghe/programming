class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }

  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  has_many :votes, dependent: :destroy
  has_many :voting_users, through: :votes, source: :user

  def vote_for(user)
    votes.find_by_user_id(user)
  end

end
