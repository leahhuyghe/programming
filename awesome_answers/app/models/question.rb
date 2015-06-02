#this is our model and it inherits from ActiveRecord::Base which gives us the ORM (Object Relational Mapping) features from the ActiveRecord gem.

class Question < ActiveRecord::Base
  #adding validations in here ensures that the records meets those criteria before saving / creating / updating. For instance the record will not insert in the database in here if the title is not present.
  #Passing a Hash to the validation key overrides the default values. So in here the message for presence validation will be "must be provided" instead of "can't be blank"
  validates :title, presence: {message: "must be provided"},
            uniqueness: true,
            length: {minimum: 5}

  validates :view_count, numericality: {greater_than_or_equal_to: 0}

  #this validates the uniqueness of title/body combination
  validates :body, uniqueness: {scope: :title}

  #this is a custom validation method. We must make sure that there is a defined method with the same name.
  validate :no_monkey

  validate :engineer

  after_initialize :set_defaults
  #we define scopes if we have common operations or queries that we need
  #to run on our model. For instance this will give us the three most recent_three
  #questions. We can call it as in : Questions.most_recent

  def self.recent_three, lambda { order("updated_at DESC").limit(3)}
    order("updated_at DESC").limit(3)
  end

  #these are private methods.
  private

  def no_monkey
    if title.present? && title.include?("monkey")
      #to make the record invalid, we just attach an error to the proper field
      #and this will make the record invalid
      errors.add(:title, "No monkeys allowed")
    end
  end

  def set_defaults
    self.view_count ||= 0
  end


  def engineer
    if title.present? && title.include?("engineer")
    end
  end


end
