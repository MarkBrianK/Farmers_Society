class UsersController < ApplicationController
  skip_before_action :authorize

  def index
    current_user = User.find_by_id(session[:current_user_id])
  end

  def show

    render json: @current_user
  end
  def create
    user = User.create!(user_params)
    session[:user_id] = user.id
    render json: user, status: :created
  end

  private
  def user_params
    params.permit( :email, :farmer_id, :password_digest,  :password_confirmation)

  end

end
