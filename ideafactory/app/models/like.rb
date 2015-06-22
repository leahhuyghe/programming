class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :idea

  validates :idea_id, uniqueness: {scope: :user_id}
end
