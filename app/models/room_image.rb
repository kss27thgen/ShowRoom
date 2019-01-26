class RoomImage < ApplicationRecord
  belongs_to :room
  mount_uploader :image, RoomImagesUploader
end
