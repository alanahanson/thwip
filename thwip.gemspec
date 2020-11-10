# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'thwip/version'

Gem::Specification.new do |spec|
  spec.name          = "thwip"
  spec.version       = Thwip::VERSION
  spec.authors       = ["Alana Hanson"]
  spec.email         = ["alanahanson@gmail.com"]

  spec.summary       = "A lil' library to grab some info from the Marvel Comics API"
  spec.homepage      = "https://github.com/alanahanson/thwip"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://mygemserver.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", "~>0.18.1"
  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "dotenv", "~> 2.7.6"
  spec.add_development_dependency "webmock", "~> 3.9.5"

end
