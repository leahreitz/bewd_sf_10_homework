class ArticlesController < ApplicationController

  http_basic_authenticate_with name: "ctd", password: "secret", except: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    @article = get_article
  end

  def new
    @article = Article.new
  end

  def edit
    @article = get_article
  end

  def create
    @article = get_article

    if @article.save
      #redirect_to 'index' if want to redirect_to index page on save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = get_article

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = get_article
    @article.destroy

    redirect_to articles_path
  end

  private
    #allows what the control will allow the view to submit to it
    def article_params
      #within params, tell model called article what attributes can be changed
      params.require(:article).permit(:title, :text)
    end

    def get_article
      Article.find(params[:id])
    end
end
