class Unit < ApplicationRecord
  has_many :sectors
  has_many :visitors

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :address, presence: true
end
