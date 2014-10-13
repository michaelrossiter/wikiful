class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    # @articles = Article.order(sort_column + " " + sort_direction).paginate(:page => params[:page])
  end
  
  def show
    @category = Category.find(params[:id])
    @articles = @category.articles.paginate(:page => params[:page])
  end

end
