class ArticlesController < ApplicationController
  def index

    @articles = Article.all
    end

  def show
  @article = Article.find(params[:id])
  end


    def new
      @article = Article.new
    end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article, :notice => "Player Saved"
       else
         render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end



  private
   def article_params
     params.require(:article).permit( :author, :player_name, :college, :position, :positions_flex, :height, :weight, :athletic_ability, :strengths, :weaknesses, :summary, :grade)

    end


end