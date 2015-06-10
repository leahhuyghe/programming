class Recipe < ActiveRecord::Base
  has_many :ingredients, dependent: :destroy
end
