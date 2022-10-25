class Users::ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article, only:[:show, :edit, :update, :destroy]

  def index
    @articles = current_user.articles
  end

  def show
  end

  def new
    @article = current_user.articles.new
  end

  def create
    @article = current_user.articles.new(article_params)
    if @article.save
      flash[:success] = '新規作成に成功しました。'
      redirect_to users_articles_url
    else
      flash[:danger] = '新規作成に失敗しました。'
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      flash[:success] = "投稿を編集しました。"
      redirect_to users_articles_url
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    flash[:success] = "投稿を削除しました。"
    redirect_to users_articles_url
  end

  private

  def set_article
    @article = current_user.articles.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content, :img)
  end
end
