class Room < ApplicationRecord
  has_many :room_images, dependent: :destroy

end
