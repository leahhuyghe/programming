class SessionsController < ApplicationController

  def new
  end

  # we're not creating anything in the database in here. We just "creating"
  # a session. Which is basically setting the session[:user_id]
  def create
    # try to find the user by the email provided
    @user = User.find_by_email params[:email]
    # if a user is found with that email. We try to authenticate
    # with the password
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Logged in"
    else
      flash[:alert] = "Wrong email or password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out!"
  end

end
