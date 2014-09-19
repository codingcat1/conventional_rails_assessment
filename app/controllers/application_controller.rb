class ApplicationController < ActionController::Base
  protect_from_forgery

  def authorize
    redirect_to login_url, alert: "NOT AUTHORIZED. Must be logged in to do that." if current_user.nil?
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
