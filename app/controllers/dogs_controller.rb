class DogsController < ApplicationController

  before_action(:find_dogs, {only: [:index]})
  before_action(:find_dog, {only: [:show]})

  def index

  end

  def show

  end

  private

  def dog_params
    params.require(:dog).permit(
      :name,
      :breed,
      :age
    )
  end

  def find_dog
    @dog = Dog.find(params[:id])
  end

  def find_dogs
    @dogs = Dog.all
  end

end
