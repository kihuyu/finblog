class ArticlesController < ApplicationController
  before_action :authorize, only: [:new]
  before_action :authorize_edit, only: [:edit, :destroy]
  def authorize_edit
    @article = Article.find(params[:id])
    if current_user.nil?
      redirect_to articles_path, alert: "You must be logged in to edit or delete"
    else
      redirect_to articles_path, alert: "Only author can edit or delete" if current_user.username != @article.author && !current_user.nil?
    end
  end
  def index
    @articles = Article.all
  end
  def show
    puts(params[:id])
    @article = Article.find(params[:id])
    session[:id] = @article.id
    session[:title] = @article.title
  end
  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    @article.author = current_user.username
    puts(current_user.inspect)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :text, :author)
    end
end
