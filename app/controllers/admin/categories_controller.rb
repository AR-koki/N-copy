class Admin::CategoriesController < ApplicationController
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
  def category_params
  	params.require(:category).permit(:genre)
  end
end
