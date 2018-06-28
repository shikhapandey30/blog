class HomeController < ApplicationController
def index
	
end

 	def article
	    @articles = Article.all
	end
	 def show

  end
  def comment
  	@article = Article.find(params[:id])
  	# @comments = @article.comments
  end

  def show_all_comments
  	@comments = Comment.all

  end
end
