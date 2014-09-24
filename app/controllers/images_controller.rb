class ImagesController < ApplicationController
  def show
    @image = Image.find(params[:id])
  end

  private
  def image_params
    params.require(:image).permit(:image_url, :title, :image_tag, :user_id)
  end
end
