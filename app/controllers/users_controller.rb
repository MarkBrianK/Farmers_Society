class UsersController < ApplicationController
  skip_before_action :authorize, only: :create

  # def index
  #   users = User.all
  #   render json: users
  # end

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
    params.require(:user).permit( :email, :farmer_id, :password,  :password_confirmation)

  end

end
