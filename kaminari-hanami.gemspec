# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kaminari/hanami/version'

Gem::Specification.new do |spec|
  spec.name          = "kaminari-hanami"
  spec.version       = Kaminari::Hanami::VERSION
  spec.authors       = ["Anton Davydov"]
  spec.email         = ["antondavydov.o@gmail.com"]

  spec.summary       = %q{Kaminari integration for hanami apps}
  spec.description   = %q{Kaminari integration for hanami apps}
  spec.homepage      = "https://github.com/davydovanton/kaminari-hanami"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency 'kaminari-core', '1.0.0'
  spec.add_dependency 'hanami'
  spec.add_dependency 'activesupport'
end
