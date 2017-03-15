# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jumphash/version"

Gem::Specification.new do |spec|
  spec.name          = "jumphash"
  spec.version       = JumpHash::VERSION
  spec.authors       = ["Christopher Dolan"]
  spec.email         = ["chris@codingstream.org"]

  spec.summary       = "Jump consistent hash implementation for Ruby"
  spec.homepage      = "https://github.com/cdolan/jumphash"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/jumphash/extconf.rb"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "xxhash", "~> 0.4"
end
