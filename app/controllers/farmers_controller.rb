class FarmersController < ApplicationController
  def index
    farmers = Farmer.all
    render json: farmers
  end
  def show
  end
  def create
  end
  def destroy
  end
end
