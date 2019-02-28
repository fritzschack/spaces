class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :spaces

  mount_uploader :profile_picture, PhotoUploader
end
