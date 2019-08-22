class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all.order(date: :desc)
  end

  def show
    @readmore = Article.global_search(@article.tag.name_fr)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article, notice: 'Article was succesfully created'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: 'Article was succesfully updated'
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_url, notice: 'Article was succesfully destroyed'
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title_fr, :title_en, :date, :photo, :content_fr, :content_en, :tag_id)
  end
end
