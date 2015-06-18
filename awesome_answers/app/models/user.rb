class User < ActiveRecord::Base
  # this is a method from Rails that will give us handy methods to hash
  # the password and compare the password as well.
  # it includes validations for password presence and password matching if
  # password_confirmation is provided
  # http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html#method-i-has_secure_password
  has_secure_password

  # this association is for questions that have been created by the user
  has_many :questions, dependent: :destroy
  has_many :answers,   dependent: :destroy

  # we want to set up an association set for questions that have been liked
  # by the user
  has_many :likes, dependent: :destroy
  # In this case we need to use has_many / through with a `source` option
  # because we already havea `has_many :questions` association above which will
  # conflict with this association if we just make it
  # `has_many :question, though: :likes`
  # has_many(:liked_questions, {through: :likes, source: :question})
  has_many :liked_questions, through: :likes, source: :question

  # the object that starts and ends with / is called a regular expression
  # Regular expressions are used to match string patterns
  validates :email, presence: true, uniqueness: true,
            format:  /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  def full_name
    "#{first_name} #{last_name}".strip.squeeze(" ")
  end

end
