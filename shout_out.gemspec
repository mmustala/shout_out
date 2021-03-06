# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shout_out/version'

Gem::Specification.new do |spec|
  spec.name          = 'shout_out'
  spec.version       = ShoutOut::VERSION
  spec.authors       = ['Kevin Pheasey']
  spec.email         = ['kevin.pheasey@gmail.com']
  spec.summary       = %q{Complex ActiveRecord callback abstraction.}
  spec.description   = %q{Abstract complex ActiveRecord callbacks into Shouts.}
  spec.homepage      = 'https://github.com/kpheasey/shout_out'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency 'rails', '>= 4.0', '< 5'
end
