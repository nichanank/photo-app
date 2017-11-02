class Image < ApplicationRecord
  belongs_to :user
  
  #Uses carrierwave to associate image with the model. :picture is an attr name of type str
  mount_uploader :picture, PictureUploader
  validate :picture_size
  
  private
  
  def picture_size
      if picture.size > 5.megabytes
          errors.add(:picture, "should be less than 5MB")
      end
  end

end
