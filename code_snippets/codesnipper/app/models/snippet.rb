class Snippet < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: {message: "must be provided"},
                    uniqueness: true,
                    length: {minimum: 5}
  validates :code, uniqueness: {scope: :title}

end
