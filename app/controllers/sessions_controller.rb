class SessionsController < ApplicationController

  skip_before_action :authorize

  def create
    current_user = User.find_by_id(session[:current_user_id])
  end

  # logging out
  def destroy
      session.delete :user_id
      head :no_content
  end




  end
