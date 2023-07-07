require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = File.expand_path('../cassettes/', __FILE__)
  c.hook_into :webmock
  c.configure_rspec_metadata!
  c.filter_sensitive_data("dummy-genius-access-token") { ENV['GENIUS_ACCESS_TOKEN'] }

  # Allow a test to run live when no cassette is specified.
  c.allow_http_connections_when_no_cassette = true

  # Ignore the `page` and `per_page` params when matching URI's.
  c.default_cassette_options = {
    :match_requests_on => [:method,
      VCR.request_matchers.uri_without_params(:page, :per_page)]
  }
end
