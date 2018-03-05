class ArticleCategoriesController < ApplicationController
  def index
    @categories = Article::Category.all
  end

  def show
    @category = Article::Category.find(params[:id])
  end

  def new
    @category = Article::Category.new
  end

  def edit
    @category = Article::Category.find(params[:id])
  end

  def create
    @category = Article::Category.new(category_params)

    if @category.save
      redirect_to article_categories_path
    else
      render 'new'
    end
  end

  def update
    @category = Article::Category.find(params[:id])

    if @category.update(category_params)
      redirect_to article_categories_path
    else
      render 'edit'
    end
  end

  def destroy
    @category = Article::Category.find(params[:id])
    @category.destroy
    redirect_to article_categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name, :slug)
  end
end
