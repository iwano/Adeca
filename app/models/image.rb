class Image < ActiveRecord::Base
  mount_uploader :photo, ImageUploader
  process_in_background :photo
  belongs_to :property

  validate :file_size

  def file_size
    if photo.file.size > 2097000
      errors.add(:photo, 'Oops! Your photo is too large. Please choose a photo that is 2 MB or smaller in size.')
    end
  end
end
