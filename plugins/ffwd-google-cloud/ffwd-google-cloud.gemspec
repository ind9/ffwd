# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ffwd/plugin/google_cloud/version'

Gem::Specification.new do |spec|
  spec.name = "ffwd-google-cloud"
  spec.version = FFWD::Plugin::GoogleCloud::VERSION
  spec.authors = ["John-John Tedro"]
  spec.email = ["udoprog@spotify.com"]
  spec.summary = %q{Google Cloud Monitoring support for FFWD.}
  spec.homepage = "https://github.com/spotify/ffwd"
  spec.license = "Apache 2.0"

  spec.files = Dir.glob('lib/**/*.rb');

  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})

  spec.require_paths = ["lib"]

  spec.add_dependency "em-http-request"

  spec.add_development_dependency "ffwd", FFWD::Plugin::GoogleCloud::VERSION
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-mocks"
end