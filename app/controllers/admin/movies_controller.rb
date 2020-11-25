class Admin::MoviesController < ApplicationController
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
  def movie_params
  	params.require(:movie).permit(:category_id, :is_active, :title, :evaluation, :genre_id, :introduction, :image)
  end
end
