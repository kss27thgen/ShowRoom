class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update]

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path, notice:"商品を出品しました"
    else
      render :purchase, alert:"商品が出品できませんでした。"
    end
  end

  def show
    @images = @room.room_images
    @a_image = @room.room_images.first
  end

  def edit
  end

  def update
    if @room.update(room_params)
      redirect_to root_path, notice:"商品を編集しました"
    else
      render :edit, alert:"商品が編集できませんでした。"
    end
  end

  def index
    @rooms = Room.all
  end




private
  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:name, :since, :area, :agent, :zipcode, :address, :description, :facility, :category, :room_type, :rent, :ward, room_images_attributes: [:image, :room_id, :id])
  end
end
