class Idea < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :collaborations, dependent: :destroy
  has_many :collaborating_users, through: :collaborations, source: :user

  validates :title, presence: true,
                   length: { minimum: 5 }



end
