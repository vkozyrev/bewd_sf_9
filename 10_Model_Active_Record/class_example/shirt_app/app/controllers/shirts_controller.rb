class ShirtsController < ApplicationController
  def index
    @shirts = Shirt.all #this will fetch all shirts from the database
  end

  def new
    @shirt = Shirt.new
  end

  def create
    @shirt = Shirt.new(shirt_params)
    @shirt.save
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
