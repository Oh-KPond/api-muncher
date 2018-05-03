class RecipesController < ApplicationController
  def index
    # if params[:query] == nil
    #   flash[:alert] = "Please make a new inquiry"
    #   redirect_to root_path
    # end

    @recipes = EdamamApiWrapper.list_recipes(params[:query])
  end

  def show
  end

  def new
    @query = params[:query]
  end

  # def create
  #   query = params[:query]
  #
  #   if EdamamApiWrapper.list_recipes(query)
  #     redirect_to recipes_path(query)
  #   else
  #     flash[:alert] = "Error inquiring"
  #   end
  # end
end
