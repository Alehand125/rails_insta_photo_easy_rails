class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]


  def index
    @photos = Photo.all
  end


  def show
  end


  def new
    @photo = Photo.new
  end


  def edit
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to @photo, notice: 'Успешно создано'
    else
      render :new
    end
  end

  def update
    if @photo.update(photo_params)
      redirect_to @photo, notice: 'Успешно обновлено'
    else
      render :edit
    end
  end


  def destroy
    @photo.destroy
    redirect_to photos_url, notice: 'Успешно удалено.'

  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

# Never trust parameters from the scary internet, only allow the white list through.
  def photo_params
    params.require(:photo).permit(:description)
  end

end
