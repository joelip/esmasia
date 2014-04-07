class ApplicationController < ActionController::Base
  protect_from_forgery

  private
    def current_user
      # cache this in instance variable so it will only be fetched one time per request
      @current_user ||= User.find_by_id(cookies[:current_user_id])
      # looks for a user by their auth token (only if auth token is set)
    end

    def logged_in?
      !!current_user
    end

    def authorize
      redirect_to login_url, alert: "Not authorized" if current_user.nil?
    end

    helper_method :current_user, :logged_in? # turns the current user method into a helper method so it can be accessible in views
end
