class DogsController < ApplicationController
  def new
    @dog = Dog.new
    @dog.employees.build()
  end

  def create
    @dog = Dog.create(dog_params)
    redirect_to dog_path(@dog)
  end

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end


private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, employees_attributes: [:id, :first_name, :last_name, :alias, :title, :office])
  end

end
