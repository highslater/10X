class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:success] = 'Yuppers, Successfully Logged In'
      redirect_to user

    else
      flash.now[:danger] = 'Nope, Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:success] = 'Yuppers, Successfully Logged Out'
    redirect_to root_url

  end

end
