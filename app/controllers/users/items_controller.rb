class Users::ItemsController < ApplicationController
  def index
  end

  def show
  	@item = Item.find(params[:id])
  end

  private
  def item_params
  	params.require(:item).permit(:movie_id, :image, :title, :gist)
  end
end
