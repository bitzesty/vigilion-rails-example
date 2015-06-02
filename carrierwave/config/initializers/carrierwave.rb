CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: 'AKIAIICXHKTOE6YGANKA',
    aws_secret_access_key: '7KLn5vdL0cUlBqpVYCMuACGRYWkCeqYxMwxnvSWt'
  }

  config.fog_directory  = 'dev-vigilion-example'
  config.fog_public     = false
end
