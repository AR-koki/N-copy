class Users::MoviesController < ApplicationController
  def index
  	@movies = Movie.where(is_active: true)
  end

  def show
  end

  private
  def movie_params
  	params.require(:movie).permit(:category_id, :is_active, :title, :evaluation, :genre_id, :introduction, :image)
  end
end
