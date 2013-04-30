# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hostless/sass/assets/version'

Gem::Specification.new do |spec|
  spec.name          = "hostless-sass-assets"
  spec.version       = Hostless::Sass::Assets::VERSION
  spec.authors       = ["Dmitriy Likhten"]
  spec.email         = ["dlikhten@gmail.com"]
  spec.description   = %q{allow sass-rails to have a hostless asset url option}
  spec.summary       = %q{allow sass-rails to have a hostless asset url option}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "sass-rails"
end
