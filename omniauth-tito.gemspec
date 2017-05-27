# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-tito/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-tito"
  spec.version       = Omniauth::Tito::VERSION
  spec.authors       = ["Paul Campbell"]
  spec.email         = ["paul@rslw.com"]

  spec.summary       = %q{An Omniauth Strategy for Tito (https://ti.to)}
  spec.description   = %q{A library to allow apps to connect to Tito to use its API on behalf of a third party}
  spec.homepage      = "https://github.com/teamtito/omniauth-tito"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.4.0'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
