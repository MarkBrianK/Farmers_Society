class SessionsController < ApplicationController

  skip_before_action :authorize, only: :create

  def create
      user = User.find_by(email: params[:email])

      if user&.authenticate(params[:password])
          session[:user_id] = user.id
          render json: user
      else
           render json: { errors: ["Invalid Data "]}, status: :unauthorized
      end
  end

  # logging out
  def destroy
      session.delete :user_id
      head :no_content
  end




  end
