class RecipesController < ApplicationController
  def index
    @search_term = params[:looking_for] || 'diet'
    @recipes = Recipe.for(@search_term)
  end
end
