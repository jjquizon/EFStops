class AlbumsController < ApplicationController
  def index
    @albums = Album.all
    render :index
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      flash.now[:success] = ['Successfully made an album']
      render :show
    else
      flash.now[:errors] = ['Unsuccessful Upload'];
      flash.now[:errors] = @image.errors.full_messages
      redirect_to root_url
    end
  end
  
  def destroy
  end

  private
  def album_params
    params.require(:album).permit(:title, :user_id, :description)
  end
end
