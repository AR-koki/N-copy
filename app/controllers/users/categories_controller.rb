class Users::CategoriesController < ApplicationController
  def index
  end

  def show
  end

  private
  def category_params
  	params.require(:category).permit(:genre)
  end
end
