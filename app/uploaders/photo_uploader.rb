# frozen_string_literal: true

# Uploader de Photos
class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process :convert => 'png'

  version :profile do
    process :resize_to_fill => [100, 100, :north]
  end
end
