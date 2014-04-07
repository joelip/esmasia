class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      if params[:remember_me]
        cookies.permanent[:current_user_id] = user.id
      else
        cookies[:current_user_id] = user.id
      end
     redirect_to home_path
	  end
  end

  def destroy
  	cookies.delete(:current_user_id)
    # to clear out entire session, use reset_session method
    redirect_to login_path
    flash[:success] = "Logged out."
  end
end
