require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
	if Rails.env.production?
    config.storage :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
     :provider               => 'AWS',
     :aws_access_key_id      => ENV['AKIAIVHELV2RU3H6OSMQ'],
     :aws_secret_access_key  => ENV['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'],
     :region                 => ENV['ap-northeast-1'],
    }
 
    config.fog_directory = ENV['uploader2']
    else
    config.storage :file
    config.enable_processing = false if Rails.env.test?
  end
end