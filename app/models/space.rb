class Space < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy
  has_many :bookings, dependent: :destroy
  accepts_nested_attributes_for :photos
  # validates :name, presence: true
  # validates :description, presence: true
  # validates :address, presence: true
  # validates :phone, presence: true
  # validates :price_per_day, presence: true
  # validates :user_id, presence: true
  # validates :website, presence: true
end
