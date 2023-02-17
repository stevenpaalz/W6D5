class CatsController < ApplicationController
  def index
  end

  def show
  end

  def update
  end

  def create
  end

  def new
  end

  def edit
  end

  private
  def cat_params
    params.require(:cat).permit(:color, :birth_date, :name, :sex, :description)
  end
end