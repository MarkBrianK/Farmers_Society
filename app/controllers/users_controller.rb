class UsersController < ApplicationController
  wrap_parameters format:[]
  skip_before_action :verify_authenticity_token

  # GET /user
  def index
    user = User.find_by(id: session[:user_id])
    if user
      users = User.all
      render json: users
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end

  end

  # POST /user
  def create
    user = User.create!(user_params)
    render json: user, status: :created
  end

  # PATCH /users/:id
  def update
    user = find_user
    if user
      user.update!(user_params)
      render json: user
    else
      render_not_found_response
    end
  end

  # DELETE /users/:id
  def destroy
    user = find_user
    if user
      user.destroy
      head :no_content
    else
      render_not_found_response
    end
  end

  private

  def user_params
    params.permit(:id, :username, :email, :password)
  end

  def find_user
    User.find_by(id: params[:id])
  end

  def render_not_found_response
    render json: { error: "User not found" }, status: :not_found
  end

end
