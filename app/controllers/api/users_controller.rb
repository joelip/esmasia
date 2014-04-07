class Api::UsersController < ApplicationController

	def current_user
		@current_user = current_user
		render json: @current_user, root: false
	end

end
