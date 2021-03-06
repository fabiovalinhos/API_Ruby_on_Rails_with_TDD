class ArticlesController < ApplicationController

  # def index
  #   articles = Article.recent
  #   render json:  articles
  # end

  def index
    articles = Article.recent.page(params[:page]).per(params[:per_page])
    render json:  articles
  end

  def show
    render json: Article.recent.find(params[:id])
  end
end
