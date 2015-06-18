class Snippet < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: {message: "must be provided"},
                    uniqueness: true,
                    length: {minimum: 5}
  #validates :code, uniqueness: {scope: :title}
  def self.search(query,category)
    if(category.to_i > 0)
         where(["category_id LIKE ? AND
                (title LIKE ? OR code LIKE ?)", 
                "#{category}",
                "%#{query}%",
                "%#{query}%"])
    else
         where(["title LIKE ? OR code LIKE ?", 
                "%#{query}%",
                "%#{query}%"])
    end
  end 

end
