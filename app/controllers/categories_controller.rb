class CategoriesController < ApplicationController
  before_action :set_gist, only: [:new, :create]

  def new
    @category = Category.new
  end

  def create
    @category = @gist.categories.new(category_params)
    if @category.save
      redirect_to gist_path(@gist)
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def set_gist
    @gist = Gist.find(params[:gist_id])
  end
end
