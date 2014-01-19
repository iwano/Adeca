class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process :resize_to_fill => [100,100]
  end

  version :small do
    process :resize_to_fill => [300,300]
  end

  version :medium do
    process :resize_and_pad => [600,333]
  end
end
