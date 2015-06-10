require 'dragonfly'
require 'dragonfly/s3_data_store'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick
  secret "822f75f4b18fce6224175a4c2150305ed83b04439c92631241cc733d17eca5bc"

  url_format "/media/:job/:name"
  url_host "http://localhost:3000"

  datastore :s3,
    bucket_name: ENV['AWS_S3_BUCKET'],
    access_key_id: ENV['AWS_S3_KEY_ID'],
    secret_access_key: ENV['AWS_S3_ACCESS_KEY']
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end
