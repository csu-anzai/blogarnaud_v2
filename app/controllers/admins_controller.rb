class AdminsController < ApplicationController
  def admin
  end

  def articles
    @articles = Article.all.order(date: :desc)
  end

  def entreprises
    @entreprises = Entreprise.all.order(id: :asc)
  end

  def tags
    @tags = Tag.all.order(name_fr: :asc)
  end

  def contacts
    @readers = Reader.all.order(id: :desc)
  end
end
