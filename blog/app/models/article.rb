class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }


  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings                  


end
