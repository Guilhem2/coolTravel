class Booking < ApplicationRecord
  belongs_to :travel
  belongs_to :user
  validates :start_date, :end_date, presence: true
  validates :end_date, comparison: { greater_than: :start_date }
end
