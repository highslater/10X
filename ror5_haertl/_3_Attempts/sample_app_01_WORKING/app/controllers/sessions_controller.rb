class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      flash[:success] = 'Yuppers, Successfully Logged In'
      redirect_to user
    else
      flash.now[:danger] = 'Nope, Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    flash[:success] = 'Yuppers, Successfully Logged Out'
    redirect_to root_url
  end

  def debug_me
    session[:debug_me] = !session[:debug_me]
    redirect_to request.referrer
  end

  def debug_info
    $debugInfoGlobalVariable = !$debugInfoGlobalVariable
    session[:debug_info] = !session[:debug_info]
    redirect_to request.referrer
  end

end
