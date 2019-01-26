class Room < ApplicationRecord
  has_many :room_images, dependent: :destroy
  accepts_nested_attributes_for :room_images

  enum category: [:戸建て, :マンション, :オフィス]
  enum room_type: [:"1R", :"1K"]
  enum ward: [:"目黒", :"品川", "港", "新宿", "渋谷", "世田谷", "杉並", "文京", "千代田", "江東", "中央", "豊島", "台東", "荒川", "葛飾", "足立"]

end
