class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Logged In!"
    else
      render :new
    end
  end

  def edit
    # # /questions/:id/edit
    # @question = Question.find params[:id]
    # # /users/:id/edit
    # @user     = User.find params[:id]
    # # /users/edit
    @user     = current_user
  end

  def update
    @user = current_user
    if !@user.authenticate(params[:user][:current_password])
      flash[:alert] = "You've entered the wrong password"
      render :edit
    elsif @user.update(user_params)
      redirect_to edit_users_path, notice: "Information updated"
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email,
                                              :password, :password_confirmation)
  end
end
