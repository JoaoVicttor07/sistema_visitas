class Unit < ApplicationRecord
  has_many :sectors
  has_many :visitors
end
