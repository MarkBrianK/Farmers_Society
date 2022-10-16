class FarmerInputsController < ApplicationController
  skip_before_action :authorize
  def index
  inputs = FarmerInput.all
  render json: inputs
  end
  def show
  inputs =  FarmerInput.find_by(params[:id])
  render json: inputs
  end

end
