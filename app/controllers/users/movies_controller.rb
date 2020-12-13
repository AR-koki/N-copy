class Users::MoviesController < ApplicationController
  def index
  	@movies = Movie.where(is_active: true).order("RANDOM()").limit(5)
  	@movie_houga = Movie.where(is_active: true).where(genre_id: 1).order("RANDOM()").limit(5)
  	@movie_youga = Movie.where(is_active: true).where(genre_id: 2).order("RANDOM()").limit(5)
  	@movie_anime = Movie.where(is_active: true).where(genre_id: 3).order("RANDOM()").limit(5)
  	@movie_dorama = Movie.where(is_active: true).where(genre_id: 4).order("RANDOM()").limit(5)
  	user = current_user
	@movie_mylist = MyList.where(user_id: user.id)
  end

  def show
  	@movie = Movie.find(params[:id])
  	@items = Item.where(movie_id: params[:id])
  end

  def video_movie
  	@movie_mylist = MyList.where(user_id: current_user.id)
  	@movies = Movie.where(genre_id:[1,2])
  end

  def video_dorama
  	@movie_mylist = MyList.where(user_id: current_user.id)
  	@movies = Movie.where(genre_id:[3,4])
  end

  private
  def movie_params
  	params.require(:movie).permit(:category_id, :is_active, :title, :evaluation, :genre_id, :introduction, :image)
  end
end
