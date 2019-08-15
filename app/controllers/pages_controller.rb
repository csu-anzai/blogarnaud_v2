class PagesController < ApplicationController
  def home
    # @articles = Article.last(5)
    @articles = Article.all.order(date: :desc).first(5)
  end

  def profile
  end

  def contact
    @reader = Reader.new
  end
end
