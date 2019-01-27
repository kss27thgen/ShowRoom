class RoomsController < ApplicationController

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

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end



private
  def room_params
    params.require(:room).permit(:name, :since, :area, :agent, :zipcode, :address, :description, :facility, :category, :room_type, :rent, :ward, room_images_attributes: [:image, :room_id, :id])
  end
end
