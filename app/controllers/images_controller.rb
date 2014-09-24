class ImagesController < ApplicationController
  def new
  end

  def show
    @image = Image.find(params[:id])
  end

  def create
    @image = Image.new(image_params)

    if @image.save
      render json: @image
    else
      flash.now[:errors] = @image.errors.full_messages
    end
  end

  private
  def image_params
    params.require(:image).permit(:image_url, :title, :image_tag, :user_id)
  end
end
