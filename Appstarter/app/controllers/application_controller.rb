class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :disable_slider, only: [:home]
  before_filter :set_global_search_variable

  def disable_slider
    @disable_slider = true
  end

  def set_global_search_variable
    @q = Project.search(params[:q]) 
  end

  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :logged_in?
  helper_method :authenticate


  def current_user
    if session[:user_id] 
      @current_user ||= User.find(session[:user_id]) 
    else
      false
    end
  end
  def logged_in?
    !!current_user
  end

  def authenticate
   unless logged_in?
     flash[:error] = "you must be logged in to access the page"
     redirect_to login_url

   end
   def unauthenticate 
    if logged_in?
      flash[:error] = "You must be logged in to access this page"
      redirect_to login_url
    end
  end
end


end
