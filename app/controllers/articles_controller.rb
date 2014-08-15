class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def new
    @article = current_user.articles.build
  end
  
  def create
    @article = current_user.articles.build(article_params)
    
    if @article.save
      redirect_to articles_path
    else
      render "new"
    end
  end
  
  private
  def article_params
    params.require(:article).permit(:title, :text, :link)
  end
  
  public
  def show
    @article = Article.find(params[:id])
  end
  
  public
  def index
    @articles = Article.all.order("created_at DESC")
  end
  
  public
  def edit
    @article = Article.find(params[:id])
  end
  
  public
  def update
    @article = Article.find(params[:id])
    
    if @article.update(article_params)
      redirect_to @article
    else
      render "edit"
    end
  end
  
  public
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    
    redirect_to articles_path
  end
  
end
