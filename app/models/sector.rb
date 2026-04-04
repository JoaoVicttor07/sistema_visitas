class Sector < ApplicationRecord
  belongs_to :unit
  has_many :visits
end
