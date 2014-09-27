class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new(favorite_params)
    if @favorite.save
      render json: @favorite
    else
      flash.now[:errors] = @favorite.errors.full_messages
      render json: @favorite
    end
  end

  def destroy
    @favorite = Favorite.find_by_id(params[:id])
    @favorite.destroy!
    render json: @favorite
  end
  
  private
  def favorite_params
    params.require(:favorite).permit(:user_id, :favoritable_id, :favoritable_type)
  end
end
