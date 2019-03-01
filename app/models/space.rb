class Space < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy
  has_many :bookings, dependent: :destroy
  accepts_nested_attributes_for :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :price_per_day, presence: true
end
