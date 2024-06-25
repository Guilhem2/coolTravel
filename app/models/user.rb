class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews
  validates :phone_number, presence: true
end
