class FarmersController < ApplicationController
  skip_before_action :authorize
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
