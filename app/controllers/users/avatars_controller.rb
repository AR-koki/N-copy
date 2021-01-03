class Users::AvatarsController < ApplicationController
	def index
		@avatars = Avatar.where(user_id: current_user.id)
	end
	def new
		@avatar = Avatar.new
	end
	def create
		@avatar = Avatar.new(avatar_params)
		@avatar.user_id = current_user.id
		@avatar.save!
		redirect_to users_avatars_path
	end
	def update
	end
	def destroy
	end
	def edit
		@avatar = Avatar.find(params[:id])
	end
	def avatar_edit
		@avatars = Avatar.all
	end
	private
	def avatar_params
		params.require(:avatar).permit(:name)
	end
end
