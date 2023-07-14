# frozen_string_literal: true

# delete user id form model

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:email])

    if user.present? && user.authenticate(params[:password])

      session[:user_id] = user.id

      redirect_to root_path, notice: 'Login successful'

    else
      flash[:alert] = 'Invalid email or password'
      render :new, status: :unprocessable_entity

    end
  end

  def destroy
    session[:user_id] = nil

    redirect_to root_path, notice: 'Logout successful'
  end
end
