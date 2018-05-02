class RecipesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @query = params[:query]
  end

  def create
    redirect_to recipes_path
  end
end
