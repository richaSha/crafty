class SessionsController < ApplicationController
  def new
    if session[:user_id]
      redirect_to "/"
    end
  end
  def create
    @user = User.authenticate(params[:email], params[:password])
    if @user
      flash[:notice] = "You've signed in."
      session[:user_id] = @user.id
      if @user.email.include? "admin.com"
        redirect_to "/admin"
      else
        redirect_to "/"
      end
    else
      flash[:alert] = "There was a problem signing in. Please try again."
      redirect_to signin_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You've signed out"
    redirect_to "/"
  end
end
