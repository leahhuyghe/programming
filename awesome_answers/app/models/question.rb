# this is our model and it inherits from ActiveRecord::Base which gives us
# the ORM (Object Relational Mapping) features from the ActiveRecord gem
# that comes with Rails
class Question < ActiveRecord::Base

  belongs_to :category

  belongs_to :user

  # this assumes that you have a model called "answer" and that model has a field
  # called "question_id" (Rails convention).
  # dependent: :destroy means that if you delete a question record, it will
  # delete all the answer records that refernce this question (with question_id)
  # we can also use: dependent: :nullify which will make the question_id value
  # null to all the answer records that references the question being deleted
  has_many :answers, dependent: :destroy

  has_many :likes, dependent: :destroy
  has_many :users, through: :likes

  # adding validations in here ensures that the records meets those
  # criteria before saving / creating / updating. For instance
  # the record will not insert in the database in here if the title
  # is not present. Passing a Hash to the validation key overrides
  # the default values. So in here the message for presence validation
  # will be "must be provided" instead of "can't be blank"
  # validates(:title, {presence: {message: "must be provided"}, uniqueness: true, length: {minimum: 5}})
  validates :title, presence: {message: "must be provided"},
                    uniqueness: true,
                    length: {minimum: 5}

  validates :view_count, numericality: {greater_than_or_equal_to: 0}

  # this validates the uniqueness of title/body combination
  # validates(:body, {:uniqueness => {:scope => :title}})
  validates :body, uniqueness: {scope: :title}

  # this is a custom validation method. We must make sure that
  # there is a defined method with the same name
  validate :no_monkey

  after_initialize :set_defaults
  before_validation :capitalize

  # we define scopes if we have common operations or queries that we need
  # to run on our model. For instance this will give us the three most recent
  # three questions. We can call it as in : Question.most_recent
  scope :recent_three, lambda { order("updated_at DESC").limit(3) }
  # This can be written as:
  # def self.recent_three
  #   order("updated_at DESC").limit(3)
  # end

  # Method that takes a single argument and returns all the questions whose
  # title or body include the argument passed. It should be find all the records
  # regardless of the case
  def self.search(term)
    where(["body ILIKE ? OR title ILIKE ?", "%#{term}%", "%#{term}%"])
  end

  def liked_by?(user)
    # likes will give all the likes objects to the current question record
    # it's the same as calling `self.likes`
    # we filter those likes by a spacific by simply passing the user: user
    # option in the where function
    # the present? will give true if there is at least one element returned
    # and will return false if there are no elements
    likes.where(user: user).present?
  end

  def like_for(user)
    likes.find_by_user_id(user)
  end

  private

  def no_monkey
    if title.present? && title.include?("monkey")
      # to make the record invalid we just attach an error to the proper
      # field and that will make the record invalid
      errors.add(:title, "Can't have monkey")
    end
  end

  def set_defaults
    self.view_count ||= 0
  end

  def capitalize
    # self.title = self.title.capitalize
    self.title.capitalize!
  end

end
