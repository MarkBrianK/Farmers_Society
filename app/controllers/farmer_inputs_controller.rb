class FarmerInputsController < ApplicationController

  def index
  inputs = FarmerInput.all
  render json: inputs
  end
  def show
  end

end
