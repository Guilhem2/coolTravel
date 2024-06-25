class Travel < ApplicationRecord
  belongs_to :agency
  has_many :bookings, dependent: :destroy
  has_many :reviews
  validates :price, presence: true, comparison: { greater_than: 0 }
end
