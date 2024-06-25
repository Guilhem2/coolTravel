class Agency < ApplicationRecord
  has_many :travels, dependent: :destroy
  validates :name, presence: true
end
