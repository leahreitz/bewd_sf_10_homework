class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "name", password: "secret", except: [:index, :show]

  #main index
  def index
    @articles = Article.all
  end

  #For a new article.
  def new
    @article = Article.new
  end

  #creating articles.
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end


  #show functions.
  def show
      @article = get_article
  end

  #edit function.
  def edit
    @article = get_article
  end

  #update function
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

  def article_params
    params.require(:article).permit(:title, :date, :author, :body, :private)
  end

  def get_article
    Article.find(params[:id])
  end

end
