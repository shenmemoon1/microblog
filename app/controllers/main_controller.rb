class MainController < ApplicationController
  def index
    flash.now[:notice] = 'Login successful'
    flash.now[:alert] = 'Invalid email address or password'
  end
end
