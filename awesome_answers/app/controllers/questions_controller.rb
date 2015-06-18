class QuestionsController < ApplicationController
  before_action :find_question, only: [:edit, :update, :destroy, :show]
  # this before_action will redirect the user to the sign in page unless
  # they are signed in already. The exception will be the index and show actions
  # because we want them to be publicly available
  before_action :authenticate_user!, except: [:index, :show]

  before_action :authorize, only: [:edit, :update, :destroy]

  # This action is to list all the questions in our database.
  # We access it with GET request to "/questions"
  def index
    # the page and per methods are from the Kaminari gem which allows
    # to do pagination within the database
    @questions = Question.page(params[:page]).per(10)
  end

  # the new action is generally used to display the form to create the record
  # in this case. The new action displays the form to create a question.
  def new
    # defining an new Question instnace variable to help us generate the
    # form needed to create the question
    @question = Question.new
    # This will render app/views/questions/new.html.erb (by convention)
  end

  def create
    # question_params in here is a private method that utializes strong params
    @question       = Question.new(question_params)

    @question.user  = current_user
    # the question.save will return true if it passes validations and saves
    # correctly to the database. Otherwise, it will return false.
    if @question.save
      # redirect_to sends a response back to the browser with a new url so the
      # browser can make a new GET request to that URL
      # redirect_to(question_path(id: @question.id))
      redirect_to question_path(@question), notice: "Question Created"
    else
      # this will render "new.html.erb" inside of "/views/questions/" folder
      render :new
    end

    # this is just to show on the page the params we get from the user
    # for testing purposes
    # render text: params[:question]
  end

  # you access this action by visiting /questions/:id
  # where :id is the id of the question we'd like to display
  def show
    # instantiating an empty answer object to help us build the answer form
    @answer = Answer.new

    # this is the like object for the @question with current_user
    # so if the user has liked this question the `@like` object will exist
    # otherwise the @like object will be nil
    @like   = @question.like_for(current_user)
  end

  # this is used to render a page that will edit an existing record in
  # the database. The URL for it will be /questions/:id/edit
  def edit
  end

  def update
    # if the record updates successfully we redirect the user to the
    # question show page.
    if @question.update(question_params)
      redirect_to question_path(@question), notice: "Question Updated"
    else
      # we render the edit page again with errors if the user doesn't enter
      # values that pass validations
      render :edit
    end
  end

  def destroy
    @question.destroy
    redirect_to questions_path, notice: "Question Destroyed"
  end

  private

  def find_question
    @question = Question.find params[:id]
  end

  def question_params
    # params[:question] => {"title"=>"My first question", "body"=>"My first question body"}

    # This uses Strong Paramters feature of Rails where you must explicit by
    # default about what parameters you'd like to allow for your record
    # in this case we only want the user to enter teh title and the body
    params.require(:question).permit([:title, :body, :category_id])
  end

  def authorize
    redirect_to root_path, alert: "access denied" unless can? :manage, @question
  end

end
