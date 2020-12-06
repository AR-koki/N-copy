class Users::MyListsController < ApplicationController
	def create
		@movie = Movie.find(params[:movie_id])
		mylist = current_user.my_lists.new(movie_id: @movie.id)
		mylist.save
		redirect_to users_movies_path
	end
	def destroy
		@movie = Movie.find(params[:movie_id])
		mylist = current_user.my_lists.new(movie_id: @movie.id)
		mylist.delete
		redirect_to users_movies_path
	end

	def my_list_params
		params.require(:my_list).permit(:movie_id, :user_id)
	end
end
