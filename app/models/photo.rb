class Photo < ApplicationRecord
  mount_uploader :image_url, PhotoUploader
  belongs_to :space
end
