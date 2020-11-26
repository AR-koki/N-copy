class Users::UsersController < ApplicationController
	def index
		@users = User.all
	end
	def new
		@user = User.new
	end
	def create
		@user = User.new(user_params)
		@user.save!
		redirect_to users_movies_path
	end
	def show
	end
	def edit
	end
	def destory
	end
	private
	def user_params
		params.require(:user).permit(:name, :email, :is_deleted)
	end
end
