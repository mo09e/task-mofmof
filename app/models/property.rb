class Property < ApplicationRecord
  has_many :nearest_stations, dependent: :destroy
  accepts_nested_attributes_for :nearest_stations, allow_destroy: true, reject_if: :reject_both_blank

  validates :name, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :age, presence: true
  validates :remarks, presence: true
end
