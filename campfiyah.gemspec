# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'campfiyah/version'

Gem::Specification.new do |spec|
  spec.name          = "campfiyah"
  spec.version       = Campfiyah::VERSION
  spec.authors       = ["Corey Donohoe"]
  spec.email         = ["atmos@atmos.org"]
  spec.description   = %q{A simple faraday based Campfire API}
  spec.summary       = %q{Ruby API to Campfire's json endpoints}
  spec.homepage      = "https://github.com/atmos/campfiyah"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "yajl-ruby"
  spec.add_dependency "faraday"
  spec.add_dependency "faraday_middleware"

  spec.add_development_dependency "pry"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "debugger"
end
