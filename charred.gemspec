# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'charred/version'

Gem::Specification.new do |spec|
  spec.name          = "charred"
  spec.version       = Charred::VERSION
  spec.authors       = ["Florian Gilcher"]
  spec.email         = ["florian.gilcher@asquera.de"]
  spec.description   = %q{A campfire console client using TMUX for splits}
  spec.summary       = %q{A quick and dirty campfire console client}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "tinder"
  spec.add_dependency "term-ansicolor"
end
