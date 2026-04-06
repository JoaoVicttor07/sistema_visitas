class Visitor < ApplicationRecord
  has_many :visits

  mount_uploader :photo, PhotoUploader
end
