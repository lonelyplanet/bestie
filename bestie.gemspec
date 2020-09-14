# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bestie/version'

Gem::Specification.new do |spec|
  spec.name          = 'bestie'
  spec.version       = Bestie::VERSION
  spec.authors       = ['SPP Product Team']
  spec.email         = ['atlas2ninjas@lonelyplanet.com.au']

  spec.summary       = 'Utility gem to enforce rails application best practice'
  spec.homepage      = 'https://github.com/lonelyplanet/bestie'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'brakeman'
  spec.add_runtime_dependency 'debride'
  spec.add_runtime_dependency 'fasterer'
  spec.add_runtime_dependency 'fray'
  spec.add_runtime_dependency 'reek'
  spec.add_runtime_dependency 'rubocop'
  spec.add_runtime_dependency 'rubycritic'
  spec.add_runtime_dependency 'simplecov'

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rails', '~> 3.2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
