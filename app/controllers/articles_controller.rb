class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    redirect_to article_path(Article.create(set_params(params)))
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    redirect_to article_path(Article.create(set_params(params)))
  end

  def destroy
    Article.find(params[:id]).delete
    redirect_to articles_path
  end

  private

  def set_params(params)
    params.require(:article).permit(:title, :content)
  end
end
