Vigilion.configure do |config|
  config.access_key_id = ENV["VIGILION_ACCESS_KEY_ID"]
  config.secret_access_key = ENV["VIGILION_SECRET_ACCESS_KEY"]

  # Integration strategy (default is :url)
  # config.integration = :local

  # By default vigilion will be bypassed in development and test environments.
  # Disable vigilion scanning entirely even in production environments:
  # config.loopback = true
  # Enable vigilion scanning even in development and test environments:
  # (Note that the callback URL won't probably be reached)
  config.loopback = false
  # Specify different loopback_response (default is 'clean')
  # config.loopback_response = 'infected'
end
