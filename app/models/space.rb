class Space < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :bookings
end
