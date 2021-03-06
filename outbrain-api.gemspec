# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'outbrain/api/version'

Gem::Specification.new do |spec|
  spec.name          = "outbrain-api"
  spec.version       = Outbrain::Api::VERSION
  spec.authors       = ["Nick Blanchet"]
  spec.email         = ["h55nick@gmail.com"]

  spec.summary       = %q{A simple wrapper for the outbrain api}
  spec.description   = %q{A wrapper for the outbrain api.}
  spec.homepage      = "https://github.com/simplereach/outbrain-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency("faraday")
  spec.add_runtime_dependency("json")
  spec.add_runtime_dependency("hashie")

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
