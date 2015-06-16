class Category < ActiveRecord::Base
  has_many :snippets
  #has_many :answers, dependent: :destroy

end
