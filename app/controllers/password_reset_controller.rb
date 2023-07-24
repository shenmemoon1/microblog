class PasswordResetController < ApplicationController
  def new; end

  def create
    @user = User.find_by(email: params[:email])

    if @user.presence?
      # sent email
      # PasswordMailer.with(user: @user).deliver_later
      PasswordMailer.with(user: @user).reset.deliver_now
    end
    redirect_to root_path, notice: 'we have sent a link to your email to reset your password'
  end
end
