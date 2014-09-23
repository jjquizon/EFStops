class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      puts "saving user to DB"
      login!(@user)
      puts "#{@user}"
      redirect_to user_url(@user)
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
    else
      redirect_to user_url(current_user)
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
