class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def create
    @user = User.new(user_params)
    if @user.save
      create_none_album(@user)
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
    params[:id] = params[:id].downcase
    if params.include?(:id)
      @user = User.friendly.find(params[:id])
      render :show
    else
      flash.now[:errors] = ["User not found"]
      @user = current_user if current_user
      render :show
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render :show
    else
      flash.now[:errors] = @user.errors.full_messages
    end
  end

  def feed
    @user = User.find(params[:id])
    if @user
      pageinate_feed(@user)
      render :feed
    else
      flash.now[:errors] = ['Could not find user']
      redirect_to root_url
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :filepicker_url)
  end

  def pageinate_feed(user)
    feed = user.feed
    @feed = Kaminari.paginate_array(feed).page(params[:page]).per(10)
  end
end
