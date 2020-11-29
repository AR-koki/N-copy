class Admins::ItemsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @movie = Movie.find(params[:id])
    @item = Item.new(item_params)
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
  	params.permit(:movie_id, :image, :title, :gist)
  end
end
