class ShirtsController < ApplicationController
  def index
    @shirts = Shirt.all
  end

  def new
    @shirt = Shirt.new
  end

  def create
    @shirt = Shirt.create(shirt_params)
    redirect_to shirts_path
  end

  def edit
  end

  def show
    @shirt = get_shirt
  end

  private

  def shirt_params
    params.require(:shirt).permit(:name, :quantity, :size)
  end

  def get_shirt
    Shirt.find(params[:id])
  end
end