class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @articles = Article.all.order(date: :desc).first(5)
  end

  def profile
  end

  def contact
    @reader = Reader.new
  end

  def search
  end
end
