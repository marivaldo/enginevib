# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'enginevib/version'

Gem::Specification.new do |spec|
  spec.name          = "enginevib"
  spec.version       = Enginevib::VERSION
  spec.authors       = ["Eduardo Mourão"]
  spec.email         = ["eduardo.a20@gmail.com"]

  spec.summary       = %q{Aircraft Avionics Built in Ruby}
  spec.description   = %q{Aircraft Avionics Built in Ruby}
  spec.homepage      = "https://github.com/eduardordm/enginevib"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/rtos/extconf.rb"]

  spec.add_dependency "curses"
  spec.add_dependency "rake-compiler"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rubocop"
end
