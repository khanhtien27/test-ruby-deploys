class ArticleController < ApplicationController
  
    before_action :authenticate_user!, except: [:index, :detail]

    def index
        @articles = Article.all
    rescue ActiveRecord::RecordNotFound
        redirect_to root_path
    end

    def detail
        @article = Article.find(params[:id])
    end

    def create_article    
      @article = Article.new
    end

    def create_article_post
        @article = Article.new(params_article)
        if @article.save
            redirect_to article_detail_path(@article)
        else
            render :create_article, status: :unprocessable_entity
        end
    end

    def edit
      @article = Article.find(params[:id])
    end

    def update
      @article = Article.find(params[:id])
      if @article.update(params_article)
        redirect_to article_detail_path(@article)
      else
        render :edit, status: :unprocessable_entity
      end
    end

    private
    def params_article
      params.require(:article).permit(:title, :description, :authur)
    end

    def authenticate_user!
      redirect_to new_user_session_path, alert: "You must sign in !"  unless user_signed_in?
    end
end