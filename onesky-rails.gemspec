# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'onesky/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "onesky-rails"
  spec.version       = Onesky::Rails::VERSION
  spec.authors       = ["Victor Lam"]
  spec.email         = ["victorebox@yahoo.com.hk"]
  spec.summary       = "Rails plugin to sync string files with OneSky"
  spec.description   = "Integrate Rails app with OneSky that provide `upload` and `download` rake command to sync string files"
  spec.homepage      = "https://github.com/onesky/onesky-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "i18n", "~> 1.1.0"
  spec.add_dependency "onesky-ruby", "~> 1.1.0"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "timecop"
  spec.add_development_dependency "webmock"
end
