class Answer < ActiveRecord::Base
  # this line was automatically generated from the bin/rails command because
  # we've set the question to be `references`:
  # bin/rails g model answer body:text question:references
  belongs_to :question

  belongs_to :user

  # the argument for has_many should always be plural
  has_many :comments, dependent: :destroy

  validates :body, presence: true
end
