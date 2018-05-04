class RecipesController < ApplicationController
  # shows the results from query : recipes GET  /recipes(.:format)
  def index
    if params[:query].blank?
      redirect_to root_path
      # flash
    else
      @recipes = EdamamApiWrapper.list_recipes(params[:query])
      @query = params[:query]
    end
  end

  # shows a single recipe : recipe GET  /recipes/:id(.:format)
  def show
  end

  # form for search also root
  def new
    @query = params[:query]
  end
end
