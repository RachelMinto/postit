class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash['notice'] = "Profile creation successful. Welcome, #{@user.username}."      
      redirect_to posts_path
    else
      render :new
    end
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end