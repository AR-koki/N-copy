class Users::AvatarsController < ApplicationController
	def index
	end
	def new
	end
	def create
	end
	def update
	end
	def destroy
	end
	private
	def avatar_params
		params.require(:avatar).permit(:name)
	end
end
