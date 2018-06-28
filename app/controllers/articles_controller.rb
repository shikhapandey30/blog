class ArticlesController < ApplicationController
    before_action :authenticate_user!

  def index
    @articles = Article.all 

    end
 
  def show
    if user_signed_in?
      @article = Article.find(params[:id])
    end
  end
 
  def new
    @article = Article.new
  end
 
  def edit
    @article = Article.find(params[:id])
  end
 
  def create
    
     @article = Article.new(title: params[:article][:title],text: params[:article][:text],first_name: params[:article][:firstname],last_name: params[:article][:lastname])
     @article.user_id = current_user.id
    @article.save
    redirect_to @article
  end
 
  def update
    @article = Article.find(params[:id])
 
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
 
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end


  def rakesh1
    
  end

  def enrollment_params
  params.require(:enrollment).permit(:car_id)
  end
 
  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
