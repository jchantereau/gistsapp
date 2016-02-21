class GistsController < ApplicationController

  before_action :find_gist, only: [:show, :edit, :update, :destroy]

  def index
    @gists = Gist.all
    unless params[:search].blank?
      search = params[:search]
      @gists = Gist.where("name LIKE ?", "%#{params[:search]}%")
    end
  end

  def show
  end

  def new
    @gist = Gist.new
  end

  def create
    @gist = Gist.new(gist_params)
    if @gist.save
      redirect_to gist_path(@gist)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @gist.update(gist_params)
    if @gist.save
      redirect_to gist_path(@gist)
    else
      render :edit
    end
  end

  def destroy
    @gist.destroy
    redirect_to root_path
  end

  private

  def find_gist
    @gist = Gist.find(params[:id])
  end

  def gist_params
    params.require(:gist).permit(:name, :description, :content, :category_id)
  end

end
