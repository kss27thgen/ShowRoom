class Room < ApplicationRecord
  has_many :room_images, dependent: :destroy
  accepts_nested_attributes_for :room_images
  geocoded_by :address
  after_validation :geocode

  enum category: [:戸建て, :アパート, :マンション, :オフィス]
  enum room_type: [:"1R", :"1K", :"1DK", :"1LDK", :"2K", :"2DK", :"2LDK", :"3DK", :"3LDK", :"4DK", :"4LDK", :"5DK以上"]
  enum ward: [:"目黒", :"品川", "港", "新宿", "渋谷", "世田谷", "杉並", "文京", "千代田", "江東", "中央", "豊島", "台東", "荒川", "葛飾", "足立"]

end
