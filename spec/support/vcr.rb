require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = File.expand_path('../cassettes/', __FILE__)
  c.hook_into :webmock
  c.configure_rspec_metadata!
  c.filter_sensitive_data("dummy-genius-access-token") { ENV['GENIUS_ACCESS_TOKEN'] }
  c.allow_http_connections_when_no_cassette = true
end
