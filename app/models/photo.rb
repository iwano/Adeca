class Photo < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :property, :inverse_of => :photos

  validate :file_size

  def file_size
    if photo.file.size > 2097000
      errors.add(:photo, 'Oops! Your photo is too large. Please choose a photo that is 2 MB or smaller in size.')
    end
  end
end
