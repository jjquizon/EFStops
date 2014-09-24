class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      login!(@user)
      redirect_to root_url
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def new
    @user = User.new
  end

  def show
    if params.include?(:id)
      @user = User.find(params[:id])
      render :show
    else
      flash.now[:errors] = ["User not found"]
      @user = current_user if current_user
      render :show
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
