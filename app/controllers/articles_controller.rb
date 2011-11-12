class ArticlesController < ApplicationController
  before_filter :article_find, :except => [:index]
  
  def create
    @article = current_user.articles.new(params[:article])
    if @article.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def show
  end

  def update
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
  end

  private

   def article_find
   @article=Article.find(params[:id])  
   end 

end
