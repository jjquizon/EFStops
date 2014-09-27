class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
    @favorite = Favorite.new(favorite_params)
    if @favorite.save
      flash.now[:success] = ['Successfully Followed']
      render json: @favorite
    else
      flash.now[:errors] = @favorite.errors.full_messages
      render json: @favorite
    end
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def destroy
    @favorite = Favorite.find_by_id(params[:id])
    @favorite.destroy!
    flash.now[:success] = ['Successfully Unfollowed']
    render json: @favorite
  end

  private
  def favorite_params
    params.require(:favorite).permit(:user_id, :favoritable_id, :favoritable_type)
  end
end
