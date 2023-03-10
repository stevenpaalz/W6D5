class CatsController < ApplicationController

  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find(params[:id])
    render :show
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update(cat_params)
      redirect_to cats_url
    else
      flash.now[:errors] = @cat.errors.full_messages
      render :edit
    end
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      redirect_to cats_url
    else
      flash.now[:errors] = @cat.errors.full_messages
      render :new
    end
  end

  def new
    @cat = Cat.new
    render :new
  end

  def edit
    @cat = Cat.find(params[:id])
    render :edit
  end

  private
  def cat_params
    params.require(:cat).permit(:color, :birth_date, :name, :sex, :description)
  end
end