class CategoriesController < ApplicationController

  def index

  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.save!
    redirect_to @category
  end

  def show

  end

  private

    def category_params
      params.require(:category).permit(:name)
    end

end