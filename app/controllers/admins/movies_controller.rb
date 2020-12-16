class Admins::MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to admins_movies_path
  end

  def show
    @movie = Movie.find(params[:id])
    @items = Item.where(movie_id: params[:id])
    @item = Item.new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to admins_movie_path(@movie)
  end

  def destroy
  end

  private
  def movie_params
  	params.require(:movie).permit(:category_id, :is_active, :title, :evaluation, :genre_id, :introduction, :image_id)
  end
end
