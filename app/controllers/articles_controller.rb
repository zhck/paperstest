class ArticlesController < ApplicationController
  
  def show
    @article=Article.find(params[:id])  
  end

  def index
    @articles = Article.paginate(:page => params[:page], :per_page=>5)
  end

end