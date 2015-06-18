class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  # this validates the uniqueness of question_id / user_id combination
  # validates(:question_id, {uniqueness: {scope: :user_id}})
  validates :question_id, uniqueness: {scope: :user_id}

end
