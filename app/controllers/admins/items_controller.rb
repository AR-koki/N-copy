class Admins::ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
    @movie = Movie.find(params[:movie_id])
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @item = @movie.items.new(item_params)
    @item.movie_id = @movie.id
    @item.save
    redirect_to admins_movie_path(@movie)
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:movie_id])
    @item = Item.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:movie_id])
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to admins_movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to admins_movie_path(@movie)
  end

  private
  def item_params
  	params.require(:item).permit(:story, :gist, :movie_id)
  end
end
