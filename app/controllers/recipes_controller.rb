class RecipesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    redirect_to recipes_path
  end
end
