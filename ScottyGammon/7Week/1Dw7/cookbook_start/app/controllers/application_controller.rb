class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  def logged_in?
    !!current_user
  end

  private

  def authenticate
    unless logged_in?
      flash[:error] = "You must be logged in to access this section of the site"
      redirect_to login_url
    end
  end

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied!"
    redirect_to :back
  end

end
