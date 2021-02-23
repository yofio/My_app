
CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['KEY'],
    aws_secret_access_key: ENV['SECRET_KEY'],
    region: 'ap-northeast-1'
  }

  config.fog_directory  = 's3myapp'
  config.cache_storage = :fog
end