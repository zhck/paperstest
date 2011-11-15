class ArticlesController < ApplicationController
  
  def show
    @article=Article.find(params[:id])  
  end

  def index
    p params[:tag]
    if !params[:tag].to_s.blank?
      @articles = Article.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page=>5)
    else  
      @articles = Article.paginate(:page => params[:page], :per_page=>5)
    end  
  end

end