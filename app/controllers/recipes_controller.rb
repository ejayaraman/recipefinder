class RecipesController < ApplicationController
  def index
  	@search_term = params[:search] ||= 'chocolate'
  	@recipes = Recipe.for(@search_termx)
  end
end
