class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find_by(id: params[:id])

    if @cat
      render :show
    else
      redirect_to cats_url
    end
  end

  def new
    @cat = Cat.new
    render :new
  end

  def create
    @cat = Cat.new(cat_params)

    if @cat.save
      redirect_to cat_url(@cat)
    else
      render :new
    end
  end

  def edit
    @cat = Cat.find_by(id: params[:id])
    render :edit
  end

  def update
    @cat = Cat.find_by(id: params[:id])

    if @cat.update
      redirect_to cat_url(@cat)
    else
      # figure out what happens when you can't update the cat
      render :edit
    end
  end

  def delete
    @cat = Cat.find_by(id: params[:id])
    @cat.destroy!
    redirect_to cats_url
  end

  private

  def cat_params
    params.require(:cats).permit(:birthdate, :name, :color, :sex, :description)
  end
end
