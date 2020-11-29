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
    @item = Item.new(item_params)
    @item.save
    redirect_to admins_movie_path(@movie)
  end

  def show
    @movie = Movie.find(params[:id])
    @item = Item.new
    @items = Item.where(movie_id: params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def movie_params
  	params.require(:movie).permit(:category_id, :is_active, :title, :evaluation, :genre_id, :introduction, :image)
  end
end
