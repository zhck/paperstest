class Manage::ArticlesController < ApplicationController
  
  before_filter :article_find, :only => [ :destroy, :edit, :update, :show]
  before_filter :authenticate
    
  def create
    @article = current_user.articles.new(params[:article])
    if @article.save
      redirect_to manage_user_path(current_user.id)
    else
      render 'new'
    end
  end

  def show
  end

  def update
    if @article.update_attributes(params[:article])
    redirect_to manage_user_path(current_user.id)
    else
      render 'edit'
    end
  end

  def destroy
    article_find.destroy
    redirect_to manage_user_path(current_user.id)
  end

  def new
    @article = Article.new
  end

  def edit
  end

  private

  def article_find
    @article = current_user.articles.find(params[:id])
  end 
 
end
