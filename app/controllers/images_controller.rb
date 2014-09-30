class ImagesController < ApplicationController
  def index
    all_images = Image.all
    sorted_images = all_images.sort do |image1, image2|
      image2.created_at <=> image1.created_at
    end

    @images = Kaminari.paginate_array(sorted_images).page(params[:page]).per(10)
    render :index
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
      flash.now[:errors] = ['Unsuccessful Upload'];
      flash.now[:errors] = @image.errors.full_messages
      redirect_to root_url
    end
  end

  private
  def image_params
    params.require(:image).permit(:image_url, :title, :image_tag, :album_id, :description)
  end
end
