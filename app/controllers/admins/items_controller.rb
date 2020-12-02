class Admins::ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @item = @movie.items.new(item_params)
    @item.movie_id = @movie.id
    @item.save
    redirect_to admins_movie_path(@movie)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def item_params
  	params.require(:item).permit(:story, :gist, :movie_id)
  end
end
