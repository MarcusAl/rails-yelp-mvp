# Be sure to restart your server when you modify this file.

# ActiveSupport::Reloader.to_prepare do
#   ApplicationController.renderer.defaults.merge!(
#     http_host: 'example.org',
#     https: false
#   )
# end

Unsplash.configure do |config|
  config.application_access_key = 'ngTHFrLP77-g58bZqVqgMNVPDTcPIFN6TO520KAyp1Q'
  config.application_secret = 'r-3TlkPX5F0tjogXJ1YwcYY5YCt3mv3mrGVocMaDGYc'
  config.application_redirect_uri = 'urn:ietf:wg:oauth:2.0:oob'
  config.utm_source = 'food_app'
end
