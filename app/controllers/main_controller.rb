class MainController < ApplicationController
  def index
    # flash.now[:notice] = 'Login successful'
    # flash.now[:alert] = 'Invalid email address or password'
    return unless session[:user_id]

    @user = User.find_by(id: session[:user_id])
  end
end
