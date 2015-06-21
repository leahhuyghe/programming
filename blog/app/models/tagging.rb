class Tagging < ActiveRecord::Base
  belongs_to :question
  belongs_to :tag

  validates :tag_id, uniqueness: {scope: :article_id}
end
