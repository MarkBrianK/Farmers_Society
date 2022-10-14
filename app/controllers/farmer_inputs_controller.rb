class FarmerInputsController < ApplicationController

  def index
  inputs = FarmerInput.all
  render json: inputs
  end
  def show
  inputs =  FarmerInput.find_by(params[:id])
  render json: inputs
  end

end
