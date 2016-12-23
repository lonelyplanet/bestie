# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spp/ci/version'

Gem::Specification.new do |spec|
  spec.name          = 'spp-ci'
  spec.version       = Spp::Ci::VERSION
  spec.authors       = ['SPP Product Team']
  spec.email         = ['atlas2ninjas@lonelyplanet.com.au']

  spec.summary       = %q{SPP Continuous Integration rake tasks for eBook applications}
  spec.homepage      = 'https://github.com/lonelyplanet/spp-ci'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rubocop'
  spec.add_runtime_dependency 'reek'
  spec.add_runtime_dependency 'brakeman'
  spec.add_runtime_dependency 'simplecov'

  spec.add_development_dependency 'rails', '~> 3.2.0'
  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'pry'
end
