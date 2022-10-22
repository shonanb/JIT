class Users::ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article, only:[:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end
end
