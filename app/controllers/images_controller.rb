class ImagesController < ApplicationController
  def new
  end

  def show
    @image = Image.find(params[:id])
  end

  def create
    @image = Image.new(image_params)

    if @image.save
      flash.now[:success] = ['Successfully Uploaded an Image']
      render :show
    else
      p @image.errors.full_messages
      flash.now[:errors] = ['Unsuccessful Upload'];
      flash.now[:errors] = @image.errors.full_messages
      redirect_to root_url
    end
  end

  private
  def image_params
    params.require(:image).permit(:image_url, :title, :image_tag, :user_id)
  end
end
