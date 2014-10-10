class CategoriesController < ApplicationController

  def index
    @categories = Category.all.paginate(:page => params[:page]).order(:name)
    @articles = Article.order(sort_column + " " + sort_direction)
  end
  
  def show
    @category = Category.find(params[:id])
  end

end