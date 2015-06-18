class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # is a shorthand for:
  # protect_from_forgery({:with => :exception})

  def authenticate_user!
    redirect_to new_session_path, notice: "Please sign in" unless user_signed_in?
  end

  def user_signed_in?
    current_user.present?
  end

  def current_user
    # we use the ||= operator so we avoid a possible multiple calls to the
    # database. So the first time current_user is called it will set the
    # @current_user variable. The second time, it won't be set, it will use it.
    # the @current_user will last for the whole request cycle.
    # we use find_by_id because it won't throw an exception if the user_id
    # doesn't exist in the database. It just give us nil which means the user
    # is not signed in.
    @current_user ||= User.find_by_id session[:user_id]
  end
  # adding this line in here makes current_user method accessible in the view
  # files. Putting things in the ApplicationController make them accessible
  # in the controller files. They need to be made helper_methods in order
  # for them to be accessible in the view files.
  helper_method :current_user

end
