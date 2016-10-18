class DogsController < ApplicationController
  def index
      @dogs = Dog.all
  end

  def new
      @dog = Dog.new
  end

  def create
      @dog = Dog.create(params.require(:dog).permit(:name, :breed, :fav_park, :rate))
      redirect_to dogs_path
  end

  def show
      @dog = Dog.find(params[:id])
  end
end
