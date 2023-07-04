# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'genius/version'

Gem::Specification.new do |spec|
  spec.name          = "genius"
  spec.version       = Genius::VERSION
  spec.authors       = ["Tim Rogers"]
  spec.email         = ["tim@gocardless.com"]

  spec.summary       = %q{A Ruby client for the Genius API (<http://genius.com/developers>).}
  spec.description   = %q{A Ruby client for the Genius API (<http://genius.com/developers>).}
  spec.homepage      = "https://github.com/timrogers/genius"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler",   "~> 2.3"
  spec.add_development_dependency "rake",      "~> 13.0"
  spec.add_development_dependency "rspec",     "~> 3.12.0"
  spec.add_development_dependency "rspec-its", "~> 1.3.0"
  spec.add_development_dependency "mocha",     "~> 2.0.4"
  spec.add_development_dependency "webmock",   "~> 3.18.1"
  spec.add_development_dependency "vcr",       "~> 6.2.0"
  spec.add_development_dependency "rubocop",   "~> 1.54.0"

  spec.add_runtime_dependency     "httparty",  "~> 0.21.0"
end
