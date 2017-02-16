class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by( username: params[:session][:username] )
    if user && user.authenticate( params[:session][:password] )
      session[:user_id] = user_id
      flash[:notice] = "You're ready to brew!"
      redirect_to user_path( current_use )
    else
      flash.now[:notice] = "Give that another try!"
      render :new
    end
  end 

  def destroy
    session.clear
    flash[:notice] = "Logged Out"
    redirect_to login_path
  end
end
