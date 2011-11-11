class ArticlesController < ApplicationController
  before_filter :article_find 
  
  def create
    @article = current_user.articles.new(params[:article])
    if @article.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def show
    @article = article_find(params[:id])
  end

  def update
    @article = article_find
       if @article.update_attributes(params[:article])
         redirect_to @article
       else
         render 'edit'
       end
  end

  def destroy
    article_find.destroy
    redirect_to articles_path
  end

  def index
    @articles = Article.paginate(:page => params[:page], :per_page=>5)
  end

  def new
    @article = Article.new
  end

  def edit
    @article = article_find    
  end
  
  

end
