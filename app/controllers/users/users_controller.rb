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
		@user = User.find(params[:id])
	end
	def edit
	end
	def update
		@user = User.find(current_user.id)
		redirect_to users_users_path
	end
	def destory
	end
	def withdrow
		@user = User.find(current_user)
		if @user.update(is_deleted: true)
			reset_session
			redirect_to new_user_session_path
		else
			render :show
		end
	end
	def my_lists
		user = current_user
		@mylists = MyList.where(user_id: user.id)
	end
	private
	def user_params
		params.require(:user).permit(:name, :email, :is_deleted)
	end
end
