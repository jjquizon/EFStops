class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_credentials(
      user_params[:username],
      user_params[:password]
    )

    if @user
      login!(@user)
      redirect_to root_url
    else
      flash.now[:errors] = ["Invalid Username/Password Xombination"]
      render :new
    end
  end

  def destroy
    logout!
    redirect_to new_session_url
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
