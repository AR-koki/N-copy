class Admins::ItemsController < ApplicationController
  def index
  end

  def new
  end

  def create
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
  	params.require(:item).permit(:movie_id, :image, :title, :gist)
  end
end
