class Photo < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  has_and_belongs_to_many :products
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :galleries
end
