class SessionsController < ApplicationController
  
  def new
    # @user = User.new
  end

  def create
    #authentication of user, creates session
    @user = User.find_by_username(params[:session][:username])
    p @user
    p params

    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      @error = "Authentication failed"
    end
  end

  def destroy
    #deletes the session
    session.clear
    redirect_to '/'
  end

end
