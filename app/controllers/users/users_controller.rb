class Users::UsersController < ApplicationController
	def index
		@users = User.all
	end
	private
	def user_params
		params.require(:user).permit(:name, :email, :is_deleted)
	end
end
