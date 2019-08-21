class AdminsController < ApplicationController
  def admin
    @articles = Article.all.order(date: :desc)
    @entreprises = Entreprise.all
    @tags = Tag.all.order(name: :asc)
    @readers = Reader.all.order(id: :desc)
  end

  def articles
    @articles = Article.all.order(date: :desc)
  end

end
