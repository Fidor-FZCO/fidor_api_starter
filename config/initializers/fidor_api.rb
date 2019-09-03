FidorApi.configure do |config|
  config.oauth_url                = ENV["FIDOR_OAUTH_URL"]
  config.api_url                  = ENV["FIDOR_API_URL"]
  config.api_path                 = ENV["FIDOR_API_PATH"]
  config.callback_url             = ENV["FIDOR_API_CALLBACK"]
  config.client_id                = ENV["FIDOR_API_CLIENT_ID"]
  config.client_secret            = ENV["FIDOR_API_CLIENT_SECRET"]
  config.logging                  = ENV["FIDOR_API_LOGGING"] == "true"
  # config.logger                   = TaggedLogger.new("FidorApi", Rails.logger)
  config.verify_ssl               = ENV.fetch("FIDOR_API_VERIFY_SSL", "true") == "true"
  # config.default_headers_callback = Proc.new do
    # RequestHeadersMiddleware.store
  # end
end
