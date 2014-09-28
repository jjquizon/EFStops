class FollowsController < ApplicationController
  def create
    @follow = Follow.new(follow_params)
    if @follow.save
      render :show
    else
      flash.now[:errors] = @follow.errors.full_messages
      render :show
    end
  end

  def destroy
    @follow = Follow.find_by_id(params[:id])
    @follow.destroy!
    render :show
  end

  def show
    @follow = Follow.find_by_id(params[:id])
    render :show
  end

  private
  def follow_params
    params.require(:follow).permit(:follower_id, :following_id)
  end
end
