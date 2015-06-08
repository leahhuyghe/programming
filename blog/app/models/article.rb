class Article < ActiveRecord::Base
  # Check if the article has a title and at least 5 characters
  validates :title, presence: true,
                    length: { minimum: 5 }
end
