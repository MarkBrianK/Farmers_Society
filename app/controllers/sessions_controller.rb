class SessionsController < ApplicationController

  skip_before_action :authorize

  def create
    user = User.find_by(email: params[:email], password_digest: params[:password])
    render json:user 
  end

  # logging out
  def destroy
      session.delete :user_id
      head :no_content
  end




  end
