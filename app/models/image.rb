class Image < ApplicationRecord
  belongs_to :user
  
  #Uses carrierwave to associate image with the model. :picture is an attr name of type str
  mount_uploader :picture, PictureUploader

end
