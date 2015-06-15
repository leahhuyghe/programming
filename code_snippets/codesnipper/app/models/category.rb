class Category < ActiveRecord::Base
  has_many :snippets
end
